<?php

namespace Web\Model\Recipe;

use Core\Model\Model;
use Core\Utils\Config;

class Detail extends Model
{

    public function get($uri)
    {
        $sql    = '
            SELECT r.id_recipe, r.diners, r.prep_time, r.cook_time, r.image, r.link,
                rl.name, rl.description,
                dl.name AS difficulty, dl.uri AS difficultyURI
            FROM recipe AS r
            INNER JOIN recipe_lang AS rl ON r.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
            INNER JOIN difficulty_lang AS dl ON r.id_difficulty = dl.id_difficulty AND dl.id_appacman_lang = :lang
            WHERE rl.uri = :uri
        ';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT),
            'uri'  => array('value' => $uri, 'type' => \PDO::PARAM_STR)
        );
        $recipe = $this->mysql->query($sql, $params);

        if (count($recipe)) {
            $recipe   = $recipe[0];
            $this->id = $recipe['id_recipe'];

            $recipe['image'] = $this->getFile($recipe['image'], 'thumb');
            $recipe['tags']  = $this->getTags();
            $recipe['specs'] = $this->getSpecs($recipe);

            $ingredients           = $this->getIngredients();
            $recipe['ingredients'] = $ingredients;
            $recipe['steps']       = $this->getSteps($ingredients);

            return $recipe;
        }
        return array();
    }

    public function getTags($all = true)
    {
        $sql = '
            SELECT tl.name, CONCAT("' . _('etiqueta') . '", "/", tl.uri) AS uri, t.order
            FROM recipe_tag AS rt
            INNER JOIN tag AS t ON rt.id_tag = t.id_tag
            INNER JOIN tag_lang AS tl ON t.id_tag = tl.id_tag AND tl.id_appacman_lang = :lang
            WHERE rt.id_recipe = :id
        ';
        if ($all) {
            $sql .= '
                UNION
                    SELECT icl.name, CONCAT("' . _('categoria') . '", "/", icl.uri) AS uri, 1000 AS `order`
                    FROM ingredient AS i
                    INNER JOIN recipe_ingredient AS ri USING(id_ingredient)
                    INNER JOIN ingredient_category_lang AS icl ON icl.id_ingredient_category = i.id_ingredient_category AND icl.id_appacman_lang = :lang
                    WHERE ri.id_recipe = :id
            ';
        }
        $sql = '
            SELECT DISTINCT tags.name, tags.uri
            FROM (' . $sql . ') AS tags
            ORDER BY tags.order ASC, tags.name ASC
        ';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT),
            'id'   => array('value' => $this->id, 'type' => \PDO::PARAM_INT)
        );
        $tags   = $this->mysql->query($sql, $params);

        if (count($tags)) {
            return $tags;
        }
        return array();
    }

    /**
     * return recipe specifications
     *
     * @param array $recipe
     *
     * @return array
     */
    private function getSpecs($recipe)
    {
        $specs = array();

        if (!empty($recipe['prep_time'])) {
            $time    = self::formatTime($recipe['prep_time']);
            $specs[] = array('name' => _('Tiempo preparación'), 'value' => $time);
        }
        if (!empty($recipe['cook_time'])) {
            $time    = self::formatTime($recipe['cook_time']);
            $specs[] = array('name' => _('Tiempo cocinando'), 'value' => $time);
        }

        if (!empty($recipe['diners'])) {
            $specs[] = array('name' => _('Comensales'), 'value' => $recipe['diners'], 'type' => 'diners');
        } else {
            $specs[] = array('name' => _('Multiplicar por...'), 'value' => 1, 'type' => 'amount');
        }

        return $specs;
    }

    public static function formatTime($minutes)
    {
        $hours   = floor($minutes / 60);
        $minutes = floor($minutes % 60);

        $time = array();
        if ($hours > 0) {
            if ($hours == 1) {
                $time[] = '1 ' . _('hora');
            } else {
                $time[] = $hours . ' ' . _('horas');
            }
        }
        if ($minutes > 0) {
            if ($minutes == 1) {
                $time[] = '1 ' . _('minuto');
            } else {
                $time[] = $minutes . ' ' . _('minutos');
            }
        }
        return implode(' ', $time);
    }

    /**
     * ingredients
     * @return array
     */
    private function getIngredients()
    {
        $sql         = '
            SELECT ri.amount, ul.name AS unit, ul.plural AS unitPlural, il.name, i.variable, rl.uri AS recipe, il.uri, ri.is_alternative
            FROM recipe_ingredient AS ri
            INNER JOIN ingredient AS i ON ri.id_ingredient = i.id_ingredient
            INNER JOIN ingredient_lang AS il ON i.id_ingredient = il.id_ingredient AND il.id_appacman_lang = :lang
            LEFT JOIN unit_lang AS ul ON ri.id_unit = ul.id_unit AND ul.id_appacman_lang = :lang
            LEFT JOIN recipe_lang AS rl ON i.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
            WHERE ri.id_recipe = :id
            ORDER BY ri.order_ingredient ASC, ri.is_alternative ASC
        ';
        $params      = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT),
            'id'   => array('value' => $this->id, 'type' => \PDO::PARAM_INT)
        );
        $ingredients = $this->mysql->query($sql, $params);

        if (count($ingredients)) {
            return $ingredients;
        }
        return array();
    }

    /**
     * steps
     *
     * @param array $ingredients
     *
     * @return array
     */
    private function getSteps($ingredients)
    {
        $sql    = '
            SELECT rs.image_step AS image, rsl.description_step AS description
            FROM recipe_step AS rs
            INNER JOIN recipe_step_lang AS rsl ON rs.id_recipe_step = rsl.id_recipe_step AND rsl.id_appacman_lang = :lang
            WHERE rs.id_recipe = :id
            ORDER BY rs.order ASC
        ';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT),
            'id'   => array('value' => $this->id, 'type' => \PDO::PARAM_INT)
        );
        $steps  = $this->mysql->query($sql, $params);

        if (count($steps)) {
            $config = Config::getInstance();
            $domain = $config->getDomain();
            foreach ($ingredients as $ingredient) {
                $uri  = $ingredient['uri'];
                $url  = $domain . _('ingrediente') . '/' . $uri;
                $link = '<a href="' . $url . '" class="main-color">' . mb_strtolower($ingredient['name']) . '</a>';

                foreach ($steps as &$step) {
                    $pattern             = '/(\\' . $ingredient['variable'] . ')([(](.*)[)])?/';
                    $replacement         = $link . $this->getSpanAmount($step, $uri, $ingredient);
                    $step['description'] = preg_replace($pattern, $replacement, $step['description']);
                }
            }
            return $steps;
        }
        return array();
    }

    private function getSpanAmount($step, $uri, $ingredient)
    {
        $span   = '';
        $amount = $ingredient['amount'];
        if ($amount > 0) {
            $pattern = '/\\' . $ingredient['variable'] . '([\(]([^\)]+)[\)])?/';
            preg_match($pattern, $step['description'], $matches);
            $fraction = 1;
            if (count($matches) == 3) {
                $fraction = $matches[2];
            }

            $data = ' data-unit="' . $ingredient['unit'] . '" data-plural="' . $ingredient['unitPlural'] . '"';
            if ($fraction != 1) {
                $data .= ' data-fraction="' . $fraction . '"';
            }

            $amount = $amount * $fraction;
            if ($amount > 0) {
                $amount = $amount;
                $span   = '<span class="' . $uri . '"' . $data . '>' . $amount;
                if ($ingredient['unit']) {
                    if ($amount != 1 && !empty($ingredient['unitPlural'])) {
                        $span .= ' ' . $ingredient['unitPlural'];
                    } else {
                        $span .= ' ' . $ingredient['unit'];
                    }
                }
                $span .= '</span>';
            }
        } else {
            $span = $ingredient['unit'];
        }

        if ($span != '') {
            $span = ' <small>(' . $span . ')</small>';
        }

        return $span;
    }

}