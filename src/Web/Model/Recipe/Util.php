<?php

namespace Web\Model\Recipe;

use Core\Model\Model;
use Core\Utils\Config;

class Util extends Model
{

    const CATEGORY   = 'ingredient_category';
    const DIFFICULTY = 'difficulty';
    const INGREDIENT = 'ingredient';
    const TAG        = 'tag';

    public function getCategory($uri)
    {
        return $this->get(self::CATEGORY, $uri);
    }

    public function getDifficulty($uri)
    {
        return $this->get(self::DIFFICULTY, $uri);
    }

    public function getIngredient($uri)
    {
        return $this->get(self::INGREDIENT, $uri);
    }

    public function getTag($uri)
    {
        return $this->get(self::TAG, $uri);
    }

    private function get($table, $uri)
    {
        $sql    = '
            SELECT tl.id_' . $table . ' AS id, tl.name
            FROM ' . $table . '_lang AS tl
            WHERE tl.id_appacman_lang = :lang AND tl.uri = :uri
        ';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT),
            'uri'  => array('value' => $uri, 'type' => \PDO::PARAM_STR)
        );
        $items  = $this->mysql->query($sql, $params);

        if (count($items)) {
            return $items[0];
        }
        return array();
    }

}