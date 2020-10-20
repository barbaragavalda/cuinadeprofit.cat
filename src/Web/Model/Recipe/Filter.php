<?php

namespace Web\Model\Recipe;

use Core\Model\Model;
use Core\Utils\Config;

class Filter extends Model
{

    const CATEGORY = 'ingredient_category';
    const DIFFICULTY = 'difficulty';
    const INGREDIENT = 'ingredient';
    const TAG = 'tag';
    const TIME = 'time';

    public function getTime()
    {
        return array(
            array('id' => 1, 'name' => _('< 15 min')),
            array('id' => 2, 'name' => _('15-30 min')),
            array('id' => 3, 'name' => _('30 min - 1 hora')),
            array('id' => 4, 'name' => _('1-2 horas')),
            array('id' => 5, 'name' => _('> 2 horas'))
        );
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
        $where = '';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT)
        );
        if ($uri != null) {
            $where = 'AND tl.uri = :uri';
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

        $sql = '
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