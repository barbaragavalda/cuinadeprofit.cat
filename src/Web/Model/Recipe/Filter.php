<?php

namespace Web\Model\Recipe;

use Core\Model\Model;
use PDO;

class Filter extends Model
{

    const CATEGORY     = 'ingredient_category';
    const DIFFICULTY   = 'difficulty';
    const INGREDIENT   = 'ingredient';
    const POTATO_TYPES = 'brava_type';
    const RATE         = 'rate';
    const TAG          = 'tag';
    const TIME         = 'time';
    const YEAR         = 'year';

    const LESS_15M        = '<15min';
    const BETWEEN_15M_30M = '15min-30min';
    const BETWEEN_30M_1H  = '30min-1h';
    const BETWEEN_1H_2H   = '1h-2h';
    const MORE_2H         = '>2h';

    const LESS_5      = '0-4.9';
    const BETWEEN_5_7 = '5-6.9';
    const BETWEEN_7_9 = '7-8.9';
    const MORE_9      = '9-10';

    private $filters = array();

    public function setFilters($filters)
    {
        $this->filters = $filters;
    }

    public function getTime($uri = null): array
    {
        if ($uri == null) {
            return array(
                array('id' => array(1, 15), 'uri' => self::LESS_15M, 'name' => _('< 15 min')),
                array('id' => array(16, 30), 'uri' => self::BETWEEN_15M_30M, 'name' => _('15-30 min')),
                array('id' => array(31, 60), 'uri' => self::BETWEEN_30M_1H, 'name' => _('30 min - 1 hora')),
                array('id' => array(61, 120), 'uri' => self::BETWEEN_1H_2H, 'name' => _('1-2 hores')),
                array('id' => array(121, PHP_INT_MAX), 'uri' => self::MORE_2H, 'name' => _('> 2 hores'))
            );
        } else {
            switch (urldecode($uri)) {
                case self::LESS_15M:
                    return array(1, 15);
                case self::BETWEEN_15M_30M:
                    return array(16, 30);
                case self::BETWEEN_30M_1H:
                    return array(31, 60);
                case self::BETWEEN_1H_2H:
                    return array(61, 120);
                case self::MORE_2H:
                    return array(121, PHP_INT_MAX);
            }
        }
        return array();
    }

    public function getCategory($uri = null): array
    {
        $categories = $this->get(self::CATEGORY, $uri);
        return $this->compare(self::CATEGORY, $categories);
    }

    public function getDifficulty($uri = null): array
    {
        $difficulties = $this->get(self::DIFFICULTY, $uri);
        return $this->compare(self::DIFFICULTY, $difficulties);
    }

    public function getIngredient($uri = null): array
    {
        $ingredients = $this->get(self::INGREDIENT, $uri);
        return $this->compare(self::INGREDIENT, $ingredients);
    }

    public function getTag($uri = null, $isHighlighted = false): array
    {
        $tags = $this->get(self::TAG, $uri, $isHighlighted);
        return $this->compare(self::TAG, $tags);
    }

    public function getPotatoTypes($uri = null): array
    {
        $types = $this->get(self::POTATO_TYPES, $uri);
        return $this->compare(self::POTATO_TYPES, $types);
    }

    public function getRates($uri = null): array
    {
        if ($uri == null) {
            return array(
                array('id' => array(9, 10), 'uri' => self::MORE_9, 'name' => '9 - 10'),
                array('id' => array(7, 8.9), 'uri' => self::BETWEEN_7_9, 'name' => ' 7 - 8.9'),
                array('id' => array(5, 6.9), 'uri' => self::BETWEEN_5_7, 'name' => '5 - 6.9'),
                array('id' => array(0, 4.9), 'uri' => self::LESS_5, 'name' => '0 - 4.9')
            );
        } else {
            switch (urldecode($uri)) {
                case self::LESS_5:
                    return array(0, 4.9);
                case self::BETWEEN_5_7:
                    return array(5, 6.9);
                case self::BETWEEN_7_9:
                    return array(7, 8.9);
                case self::MORE_9:
                    return array(9, 10);
            }
        }
        return array();
    }

    public function getPotatoYears($limit = PHP_INT_MAX, $preventCurrent = false): array
    {
        $having = '';
        if ($preventCurrent) {
            $having = 'HAVING id <> YEAR(CURDATE())';
        }
        $sql   = "
            SELECT DISTINCT(YEAR(last_visit)) AS id
            FROM brava_review
            WHERE last_visit IS NOT NULL
            $having
            ORDER BY id DESC
            LIMIT $limit
        ";
        $years = $this->mysql->query($sql);
        if (count($years)) {
            foreach ($years as &$year) {
                $year['name'] = $year['id'];
                $year['uri']  = $year['id'];
            }
        }
        return $this->compare(self::YEAR, $years);
    }

    private function get($table, $uri = null, $isHighlighted = false): array
    {
        $where  = '';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT)
        );
        if ($uri != null) {
            $where         = 'AND tl.uri = :uri';
            $params['uri'] = array('value' => $uri, 'type' => PDO::PARAM_STR);
        }
        if ($isHighlighted) {
            $where = 'AND t.is_highlighted = 1';
        }

        $orderBy = 'tl.name';
        switch ($table) {
            case self::DIFFICULTY:
                $orderBy = 't.order';
                break;
            case self::TAG:
                $orderBy = 't.order, tl.name';
                break;
            case self::POTATO_TYPES:
                $orderBy = 'id ASC';
                break;
        }

        $sql   = "
            SELECT t.id_$table AS id, tl.uri AS uri, tl.name
            FROM $table AS t
            INNER JOIN {$table}_lang AS tl ON t.id_$table = tl.id_$table
                AND tl.id_appacman_lang = :lang $where
            ORDER BY $orderBy
        ";
        $items = $this->mysql->query($sql, $params);

        if (count($items)) {
            if ($uri != null) {
                return $items[0];
            }
            return $items;
        }
        return array();
    }

    private function compare($key, $items): array
    {
        // TODO no funciona amb els ingredients
        if (array_key_exists($key, $this->filters)) {
            $selected = $this->filters[ $key ];
            usort($items, function ($a, $b) use ($selected) {
                if (in_array($a['id'], $selected)) {
                    return 0;
                }
                if (in_array($b['id'], $selected)) {
                    return 1;
                }
                return strcmp($a['name'], $b['name']);
            });
        }
        return $items;
    }

}