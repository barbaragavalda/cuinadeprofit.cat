<?php

namespace Web\Model\Potato;

use Core\Model\Paginated;
use Core\Model\Utils\DateUtils;
use Core\Utils\Config;
use DateTime;
use IntlDateFormatter;
use PDO;
use Web\Model\Recipe\Detail;

class FilteredList extends Paginated
{

    public function __construct($page, $itemsPerPage = 12)
    {
        parent::__construct($page, $itemsPerPage, false);
    }

    public function initAll()
    {

    }

    public function getStats(): array
    {
        $total = $this->getDone();
        $stats = array(
            array('name' => _('En total'), 'value' => $total, 'degrees' => 180)
        );
        $now   = new DateTime();
        $year  = intval($now->format('Y'));
        for ($i = $year; $i > $year - 3; $i--) {
            $value   = $this->getDone($i);
            $degrees = round(180 * $value / $total);
            $stats[] = array('name' => $i, 'value' => $value, 'degrees' => $degrees);
        }

        $average = $this->getAverage();
        $degrees = round(180 * $average / 10);
        $stats[] = array('name' => _('Nota mitjana'), 'value' => $average, 'degrees' => $degrees);
        return $stats;
    }

    private function getAverage(): float
    {
        $sql     = '
            SELECT AVG(br.score) AS average
            FROM brava AS b
            INNER JOIN brava_review AS br ON br.id_brava = b.id_brava
            WHERE b.id_brava_type = 3
        ';
        $average = $this->mysql->query($sql);
        if (count($average)) {
            return round($average[0]['average'], 1);
        }
        return 0;
    }

    private function getDone(?int $year = null): int
    {
        $innerJoin = '';
        $params    = array();
        if ($year != null) {
            $innerJoin      = PHP_EOL
                . ' INNER JOIN brava_review AS br ON br.id_brava = b.id_brava AND last_visit LIKE :year';
            $params['year'] = array('value' => $year . '%', 'type' => PDO::PARAM_STR);
        }
        $sql    = "
            SELECT COUNT(DISTINCT b.id_brava) AS count
            FROM brava AS b
            $innerJoin
            WHERE b.id_brava_type = 3
        ";
        $result = $this->mysql->query($sql, $params);
        return $result[0]['count'];
    }

}