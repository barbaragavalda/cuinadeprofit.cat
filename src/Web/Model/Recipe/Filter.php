<?php

namespace Web\Model\Recipe;

use Core\Model\Model;
use Core\Utils\Config;

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

    public function getTime($uri = null)
    {
        if ($uri == null) {
            return array(
                array('id' => self::LESS_15M, 'name' => _('< 15 min')),
                array('id' => self::BETWEEN_15M_30M, 'name' => _('15-30 min')),
                array('id' => self::BETWEEN_30M_1H, 'name' => _('30 min - 1 hora')),
                array('id' => self::BETWEEN_1H_2H, 'name' => _('1-2 horas')),
                array('id' => self::MORE_2H, 'name' => _('> 2 horas'))
            );
        } else {
            switch (urldecode($uri)) {
                case self::LESS_15M:
                    return array(0, 15);
                    break;
                case self::BETWEEN_15M_30M:
                    return array(16, 30);
                    break;
                case self::BETWEEN_30M_1H:
                    return array(31, 60);
                    break;
                case self::BETWEEN_1H_2H:
                    return array(61, 120);
                    break;
                case self::MORE_2H:
                    return array(121, PHP_INT_MAX);
                    break;
            }
        }
        return array();
    }

    public function getCategory($uri = null)
    {
        return $this->get(self::CATEGORY, $uri);
    }

    public function getDifficulty($uri = null)
    {
        return $this->get(self::DIFFICULTY, $uri);
    }

    public function getIngredient($uri = null)
    {
        return $this->get(self::INGREDIENT, $uri);
    }

    public function getTag($uri = null)
    {
        return $this->get(self::TAG, $uri);
    }

    private function get($table, $uri = null)
    {
        $where  = '';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT)
        );
        if ($uri != null) {
            $where         = 'AND tl.uri = :uri';
            $params['uri'] = array('value' => $uri, 'type' => \PDO::PARAM_STR);
        }

        $orderBy = 'tl.name ASC';
        switch ($table) {
            case self::DIFFICULTY:
                $orderBy = 't.id_' . $table . ' ASC';
                break;
            case self::TAG:
                $orderBy = 't.order ASC, tl.name ASC';
                break;
        }

        $sql   = '
            SELECT tl.uri AS id, tl.name
            FROM ' . $table . ' AS t
            INNER JOIN ' . $table . '_lang AS tl ON t.id_' . $table . ' = tl.id_' . $table . ' 
                AND tl.id_appacman_lang = :lang ' . $where . '
            ORDER BY ' . $orderBy . '
        ';
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