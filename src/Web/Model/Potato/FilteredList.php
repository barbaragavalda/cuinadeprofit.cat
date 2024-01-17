<?php

namespace Web\Model\Potato;

use Core\Model\Paginated;
use Core\Model\Utils\DateUtils;
use Core\Model\Utils\StringUtils;
use DateTime;
use PDO;

class FilteredList extends Paginated
{

    const TO_DO_BAR        = 1;
    const TO_DO_RESTAURANT = 2;
    const DONE             = 3;

    public function __construct($page, $itemsPerPage = 12)
    {
        parent::__construct($page, $itemsPerPage, false);
    }

    public function initAll()
    {
        $needsScore = false;
        $where      = $innerJoin = $limit = $having = '';
        $params     = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT)
        );
        if (array_key_exists('query', $this->filters)) {
            $where           .= ' AND (b.name LIKE :query OR b.address LIKE :query OR bl.text LIKE :query)';
            $params['query'] = array('value' => '%' . $this->filters['query'] . '%', 'type' => PDO::PARAM_STR);
        }
        if (array_key_exists('rate', $this->filters)) {
            $needsScore      = true;
            $having          = 'HAVING score BETWEEN :start AND :end';
            $params['start'] = array('value' => $this->filters['rate'][0], 'type' => PDO::PARAM_STR);
            $params['end']   = array('value' => $this->filters['rate'][1], 'type' => PDO::PARAM_STR);
        }
        if (array_key_exists('year', $this->filters)) {
            $whereOr = array();
            foreach ($this->filters['year'] as $i => $year) {
                $whereOr[]        = "br.last_visit LIKE :year$i";
                $params["year$i"] = array('value' => $year . '%', 'type' => PDO::PARAM_STR);
            }
            if (count($whereOr)) {
                $innerJoin = 'INNER JOIN brava_review AS br ON br.id_brava = b.id_brava';
                $innerJoin .= ' AND (' . implode(' OR ', $whereOr) . ')';
            }
        }
        if (array_key_exists('not_in', $this->filters) && count($this->filters['not_in'])) {
            $needsScore = true;
            $where      .= ' AND b.id_brava NOT IN(' . implode(', ', $this->filters['not_in']) . ')';
            $where      .= ' AND b.is_closed <> 1';
            $limit      = "
                ORDER BY score DESC
                LIMIT $this->itemsPerPage
            ";
        }

        $types = array(self::DONE);
        if (array_key_exists('pro', $this->filters) && $this->filters['pro']) {
            if (array_key_exists('brava_type', $this->filters) && count($this->filters['brava_type'])) {
                $types = $this->filters['brava_type'];
            } else {
                $types[] = self::TO_DO_BAR;
                $types[] = self::TO_DO_RESTAURANT;
            }
        }

        $fields = '';
        if ($needsScore) {
            $fields = ', (SELECT score FROM brava_review WHERE id_brava = b.id_brava ORDER BY last_visit DESC LIMIT 1) AS score';
        }

        $sql         = "
            SELECT DISTINCT b.id_brava AS id, b.id_brava_type, b.name, b.is_restaurant, b.is_closed,
                   b.address, b.latitude, b.longitude, IFNULL(bl.text, '') AS text $fields
            FROM brava AS b
            INNER JOIN brava_lang AS bl ON b.id_brava = bl.id_brava AND bl.id_appacman_lang = :lang
            $innerJoin
            WHERE b.id_brava_type IN (" . implode(', ', $types) . ") $where
            $having
            $limit
        ";
        $this->items = $this->mysql->query($sql, $params);
    }

    public function getItemsPage(): array
    {
        $items = parent::getItemsPage();
        foreach ($items as &$item) {
            $this->prepare($item);
        }
        return $items;
    }

    private function prepare(&$item)
    {
        $item['reviews'] = $this->getReviews($item['id']);
        $item['link']    = \Web\Model\Restaurant\FilteredList::getLinkMaps($item);
    }

    private function getReviews($id): array
    {
        $sql     = '
            SELECT r.image, IFNULL(r.last_visit, "") AS last_visit, IFNULL(rl.review, "") AS review, 
                   IFNULL(r.price, "") AS price, IFNULL(r.amount, "") AS amount, IFNULL(r.potatoes, "") AS potatoes, 
                   IFNULL(r.sauce, "") AS sauce, IFNULL(r.score, "") AS score
            FROM brava_review AS r
            INNER JOIN brava_review_lang AS rl ON r.id_brava_review = rl.id_brava_review AND rl.id_appacman_lang = :lang
            WHERE r.id_brava = :id
            ORDER BY r.last_visit DESC
        ';
        $params  = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT),
            'id'   => array('value' => $id, 'type' => PDO::PARAM_INT)
        );
        $reviews = $this->mysql->query($sql, $params);
        if (count($reviews)) {
            foreach ($reviews as &$review) {
                $review['price']      = StringUtils::formatPrice($review['price']);
                $review['image']      = $this->getFile($review['image'], 'thumb');
                $review['last_visit'] = DateUtils::userDate($review['last_visit']);
                if (empty($review['image'])) {
                    $review['image'] = '';
                }
            }
            return $reviews;
        }
        return array();
    }

    public function getStats(): array
    {
        $total = $this->getDone();
        $stats = array(
            array('name' => _('En total'), 'value' => $total, 'degrees' => 180)
        );

        $average = $this->getAverage();
        $degrees = round(180 * $average / 10);
        $stats[] = array('name' => _('Nota mitjana'), 'value' => $average, 'degrees' => $degrees);

        $now   = new DateTime();
        $year  = intval($now->format('Y'));
        for ($i = $year; $i > $year - 4; $i--) {
            $value   = $this->getDone($i);
            $degrees = round(180 * $value / $total);
            $stats[] = array('name' => $i, 'value' => $value, 'degrees' => $degrees);
        }
        return $stats;
    }

    private function getAverage(): float
    {
        $sql     = '
            SELECT AVG(br.score) AS average
            FROM brava AS b
            INNER JOIN brava_review AS br ON br.id_brava = b.id_brava
            WHERE b.id_brava_type = :type
        ';
        $params  = array(
            'type' => array('value' => self::DONE, 'type' => PDO::PARAM_INT)
        );
        $average = $this->mysql->query($sql, $params);
        if (count($average)) {
            return round($average[0]['average'], 1);
        }
        return 0;
    }

    private function getDone(?int $year = null): int
    {
        $innerJoin = '';
        $params    = array(
            'type' => array('value' => self::DONE, 'type' => PDO::PARAM_INT)
        );
        if ($year != null) {
            $innerJoin      = ' AND last_visit LIKE :year';
            $params['year'] = array('value' => $year . '%', 'type' => PDO::PARAM_STR);
        }

        $sql    = "
            SELECT COUNT(br.id_brava_review) AS count
            FROM brava AS b
            INNER JOIN brava_review AS br ON br.id_brava = b.id_brava $innerJoin
            WHERE b.id_brava_type = :type
        ";
        $result = $this->mysql->query($sql, $params);
        return $result[0]['count'];
    }

}