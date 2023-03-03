<?php

namespace Web\Model\Recipe;

use Core\Model\Model;
use PDO;

class Filter extends Model
{

    const CATEGORY   = 'ingredient_category';
    const DIFFICULTY = 'difficulty';
    const INGREDIENT = 'ingredient';
    const TAG        = 'tag';
    const TIME       = 'time';

    const LESS_15M        = '<15min';
    const BETWEEN_15M_30M = '15min-30min';
    const BETWEEN_30M_1H  = '30min-1h';
    const BETWEEN_1H_2H   = '1h-2h';
    const MORE_2H         = '>2h';

    public function getTime($uri = null): array
    {
        if ($uri == null) {
            return array(
                array('id' => array(1, 15), 'uri' => self::LESS_15M, 'name' => _('< 15 min')),
                array('id' => array(16, 30), 'uri' => self::BETWEEN_15M_30M, 'name' => _('15-30 min')),
                array('id' => array(31, 60), 'uri' => self::BETWEEN_30M_1H, 'name' => _('30 min - 1 hora')),
                array('id' => array(61, 120), 'uri' => self::BETWEEN_1H_2H, 'name' => _('1-2 horas')),
                array('id' => array(121, PHP_INT_MAX), 'uri' => self::MORE_2H, 'name' => _('> 2 horas'))
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
        return $this->get(self::CATEGORY, $uri);
    }

    public function getDifficulty($uri = null): array
    {
        return $this->get(self::DIFFICULTY, $uri);
    }

    public function getIngredient($uri = null): array
    {
        return $this->get(self::INGREDIENT, $uri);
    }

    public function getTag($uri = null, $isHighlighted = false): array
    {
        return $this->get(self::TAG, $uri, $isHighlighted);
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
                $orderBy = "t.id_$table ASC";
                break;
            case self::TAG:
                $orderBy = 't.order, tl.name';
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

}