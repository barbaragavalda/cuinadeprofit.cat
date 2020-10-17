<?php

namespace Web\Model\Recipe;

use Core\Model\Model;
use Core\Utils\Config;

class Detail extends Model
{

    public function get($uri = null)
    {
        $where = '';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT)
        );
        if( $uri != null ){
            $where = 'WHERE rl.uri = :uri';
            $params['uri'] = array('value' => $uri, 'type' => \PDO::PARAM_STR);
        }
        if( $this->id > 0 ){
            $where = 'WHERE r.id_recipe = :id';
            $params['id'] = array('value' => $this->id, 'type' => \PDO::PARAM_INT);
        }
        
        $sql = '
            SELECT r.id_recipe, r.diners, r.prep_time, r.cook_time, r.image, r.link,
                rl.name, rl.uri, rl.description,
                dl.id_difficulty, dl.name AS difficulty, dl.uri AS difficultyURI
            FROM recipe AS r
            INNER JOIN recipe_lang AS rl ON r.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
            INNER JOIN difficulty_lang AS dl ON r.id_difficulty = dl.id_difficulty AND dl.id_appacman_lang = :lang
            ' . $where . '
        ';
        $recipe = $this->mysql->query($sql, $params);

        if (count($recipe)) {
            $recipe = $recipe[0];
            $this->id = $recipe['id_recipe'];

            $recipe['image'] = $this->getFile($recipe['image'], 'thumb');
            $recipe['tags'] = $this->getTags();
            $recipe['specs'] = $this->getSpecs($recipe);

            $ingredients = $this->getIngredients();
            $recipe['ingredients'] = $ingredients;
            $recipe['steps'] = $this->getSteps($ingredients);

            return $recipe;
        }
        return array();
    }

    public function getTags($all = true)
    {
        $sql = '
            SELECT tl.name, tl.uri, t.order
            FROM recipe_tag AS rt
            INNER JOIN tag AS t ON rt.id_tag = t.id_tag
            INNER JOIN tag_lang AS tl ON t.id_tag = tl.id_tag AND tl.id_appacman_lang = :lang
            WHERE rt.id_recipe = :id
        ';
        if ($all) {
            $sql .= '
                UNION
                    SELECT icl.name, icl.uri, 1000 AS `order`
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
            'id' => array('value' => $this->id, 'type' => \PDO::PARAM_INT)
        );
        $tags = $this->mysql->query($sql, $params);

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
            $time = self::formatTime($recipe['prep_time']);
            $specs[] = array('name' => _('Tiempo preparación'), 'value' => $time);
        }
        if (!empty($recipe['cook_time'])) {
            $time = self::formatTime($recipe['cook_time']);
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
        $hours = floor($minutes / 60);
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
        $sql = '
            SELECT ri.id_ingredient, ri.amount, ri.is_alternative, ri.is_optional,
                ul.name AS unit, ul.plural AS unitPlural, 
                il.name, i.variable, il.uri
            FROM recipe_ingredient AS ri
            INNER JOIN ingredient AS i ON ri.id_ingredient = i.id_ingredient
            INNER JOIN ingredient_lang AS il ON i.id_ingredient = il.id_ingredient AND il.id_appacman_lang = :lang
            LEFT JOIN unit_lang AS ul ON ri.id_unit = ul.id_unit AND ul.id_appacman_lang = :lang
            WHERE ri.id_recipe = :id
            ORDER BY ri.order_ingredient ASC, ri.is_alternative ASC
        ';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT),
            'id' => array('value' => $this->id, 'type' => \PDO::PARAM_INT)
        );
        $ingredients = $this->mysql->query($sql, $params);

        if (count($ingredients)) {
            foreach ($ingredients as &$ingredient) {
                $ingredient['recipes'] = $this->getIngredientRecipes($ingredient['id_ingredient']);
            }
            return $ingredients;
        }
        return array();
    }

    private function getIngredientRecipes($id)
    {
        $sql = '
            SELECT irl.type, rl.uri
            FROM ingredient_recipe AS ir
            INNER JOIN ingredient_recipe_lang AS irl ON ir.id_ingredient_recipe = irl.id_ingredient_recipe AND irl.id_appacman_lang = :lang
            INNER JOIN recipe_lang AS rl ON ir.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
            WHERE ir.id_ingredient = :id
            ORDER BY ir.order ASC
        ';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT),
            'id' => array('value' => $id, 'type' => \PDO::PARAM_INT)
        );
        $recipes = $this->mysql->query($sql, $params);

        if (count($recipes)) {
            return $recipes;
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
        $sql = '
            SELECT rs.image_step AS image, rsl.description_step AS description
            FROM recipe_step AS rs
            INNER JOIN recipe_step_lang AS rsl ON rs.id_recipe_step = rsl.id_recipe_step AND rsl.id_appacman_lang = :lang
            WHERE rs.id_recipe = :id
            ORDER BY rs.order ASC
        ';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT),
            'id' => array('value' => $this->id, 'type' => \PDO::PARAM_INT)
        );
        $steps = $this->mysql->query($sql, $params);
        
        if (count($steps)) {
            $config = Config::getInstance();
            $domain = $config->getDomain();

            // replace recipes
            foreach ($steps as &$step) {
                $patternRecipe = '/\[(\d)\]/';
                preg_match_all($patternRecipe, $step['description'], $matches);
                if( count($matches)){
                    for($i=0; $i<count($matches[0]); $i++){
                        $recipe = new Detail();
                        $recipe->setID($matches[1][$i]);
                        $recipeInfo = $recipe->get();
                        if( count($recipeInfo)){
                            $url = $domain . _('receta') . '/' . $recipeInfo['uri'];
                            $link = '<a href="' . $url . '" class="main-color">' . mb_strtolower($recipeInfo['name']) . '</a>';
                            $step['description'] = str_replace($matches[0][$i], $link, $step['description']);
                        }
                    }
                }
            }

            // replace ingredients
            foreach ($ingredients as $ingredient) {
                $uri = $ingredient['uri'];
                $url = $domain . _('recetas') . '/' . $uri;
                $link = '<a href="' . $url . '" class="black-color"><b>' . mb_strtolower($ingredient['name']) . '</b></a>';

                foreach ($steps as &$step) {
                    $patternIngredient = '/\\' . $ingredient['variable'] . '([\(]([^\)]+)[\)])?/';
                    $replacement = $link . $this->getSpanAmount($patternIngredient, $step, $uri, $ingredient);
                    $step['description'] = preg_replace($patternIngredient, $replacement, $step['description']);
                }
            }
            return $steps;
        }
        return array();
    }

    private function getSpanAmount($pattern, $step, $uri, $ingredient)
    {
        $span = '';
        $amount = $ingredient['amount'];
        if ($amount > 0) {
            preg_match($pattern, $step['description'], $matches);
            $fraction = 1;
            if (count($matches) == 3) {
                $fraction = $matches[2];
            }

            $patternParenthesis = '/[ ]([\(]([^\)]+)[\)])?/';
            $unit = preg_replace($patternParenthesis, '', $ingredient['unit']);
            $unitPlural = preg_replace($patternParenthesis, '', $ingredient['unitPlural']);
            $data = ' data-unit="' . $unit . '" data-plural="' . $unitPlural . '"';
            if ($fraction != 1) {
                $data .= ' data-fraction="' . $fraction . '"';
            }

            $amount = $amount * $fraction;
            if ($amount > 0) {
                $span = '<span class="' . $uri . '"' . $data . '>' . $amount;
                if ($ingredient['unit']) {
                    if ($amount != 1 && !empty($unitPlural)) {
                        $span .= ' ' . $unitPlural;
                    } else {
                        $span .= ' ' . $unit;
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