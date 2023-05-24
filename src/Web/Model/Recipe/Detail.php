<?php

namespace Web\Model\Recipe;

use Core\Model\Model;
use Core\Utils\Config;
use PDO;

class Detail extends Model
{

    const PATTERN_RECIPE      = '/\[(\d*)]/';
    const PATTERN_DINERS      = '$diners';
    const PATTERN_PARENTHESIS = '/ ([(]([^)]+)[)])?/';

    public function get($uri = null): array
    {
        $where   = '';
        $orderBy = '';
        $params  = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT)
        );
        if ($uri != null) {
            if ($uri == _('aleatoria')) {
                $orderBy = 'ORDER BY RAND()';
            } else {
                $where         = ' AND rl.uri = :uri';
                $params['uri'] = array('value' => $uri, 'type' => PDO::PARAM_STR);
            }
        }
        if ($this->id > 0) {
            $where        = ' AND r.id_recipe = :id';
            $params['id'] = array('value' => $this->id, 'type' => PDO::PARAM_INT);
        }

        $sql    = "
            SELECT r.id_recipe, r.diners, r.prep_time, r.cook_time, r.rest_time, r.image, r.link,
                rl.name, rl.uri, rl.description,
                rl.name AS metatag_title, rl.description AS metatag_description,
                dl.id_difficulty, dl.name AS difficulty, dl.uri AS difficultyURI
            FROM recipe AS r
            INNER JOIN recipe_lang AS rl ON r.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
            INNER JOIN difficulty_lang AS dl ON r.id_difficulty = dl.id_difficulty AND dl.id_appacman_lang = :lang
            WHERE r.is_visible = 1 $where
            $orderBy
        ";
        $recipe = $this->mysql->query($sql, $params);

        if (count($recipe)) {
            $recipe   = $recipe[0];
            $this->id = $recipe['id_recipe'];

            $imageID                 = $recipe['image'];
            $recipe['image']         = $this->getFile($imageID, 'thumb');
            $recipe['metatag_image'] = $this->getFBImage($imageID, 'list');
            $recipe['tags']          = $this->getTags();
            $recipe['specs']         = $this->getSpecs($recipe);

            $ingredients           = $this->getIngredients();
            $recipe['ingredients'] = $ingredients;
            $recipe['steps']       = $this->getSteps($ingredients, $recipe['diners']);

            return $recipe;
        }
        return array();
    }

    public function getTags($all = true): array
    {
        $sql = '
            SELECT tl.name, tl.uri, t.is_highlighted, t.order
            FROM recipe_tag AS rt
            INNER JOIN tag AS t ON rt.id_tag = t.id_tag
            INNER JOIN tag_lang AS tl ON t.id_tag = tl.id_tag AND tl.id_appacman_lang = :lang
            WHERE rt.id_recipe = :id
        ';
        if ($all) {
            $sql .= '
                UNION
                    SELECT icl.name, icl.uri, 0 AS is_highlighted, 1000 AS `order`
                    FROM ingredient AS i
                    INNER JOIN recipe_ingredient AS ri USING(id_ingredient)
                    INNER JOIN ingredient_category_lang AS icl ON icl.id_ingredient_category = i.id_ingredient_category AND icl.id_appacman_lang = :lang
                    WHERE ri.id_recipe = :id
            ';
        }
        $sql    = "
            SELECT DISTINCT tags.name, tags.uri, tags.is_highlighted
            FROM ($sql) AS tags
            ORDER BY tags.order, tags.name
        ";
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT),
            'id'   => array('value' => $this->id, 'type' => PDO::PARAM_INT)
        );
        $tags   = $this->mysql->query($sql, $params);

        if (count($tags)) {
            return $tags;
        }
        return array();
    }

    private function getSpecs($recipe): array
    {
        $specs = array();

        if (!empty($recipe['prep_time'])) {
            $time    = self::formatTime($recipe['prep_time']);
            $specs[] = array('name' => _('Temps preparació'), 'value' => $time);
        }
        if (!empty($recipe['cook_time'])) {
            $time    = self::formatTime($recipe['cook_time']);
            $specs[] = array('name' => _('Temps cuinant'), 'value' => $time);
        }
        if (!empty($recipe['rest_time'])) {
            $time    = self::formatTime($recipe['rest_time']);
            $specs[] = array('name' => _('Temps repòs'), 'value' => $time);
        }

        if (!empty($recipe['diners'])) {
            $specs[] = array('name' => _('Comensals'), 'value' => $recipe['diners'], 'type' => 'diners');
        } else {
            $specs[] = array('name' => _('Multiplicar per...'), 'value' => 1, 'type' => 'amount');
        }

        return $specs;
    }

    public static function formatTime($minutes): string
    {
        $hours   = floor($minutes / 60);
        $minutes = floor($minutes % 60);

        $time = array();
        if ($hours > 0) {
            if ($hours == 1) {
                $time[] = '1 ' . _('hora');
            } else {
                $time[] = "$hours " . _('hores');
            }
        }
        if ($minutes > 0) {
            if ($minutes == 1) {
                $time[] = '1 ' . _('minut');
            } else {
                $time[] = "$minutes " . _('minuts');
            }
        }
        return implode(' ', $time);
    }

    private function getIngredients(): array
    {
        $sql         = '
            SELECT ri.id_ingredient, ri.amount, ri.is_alternative, ri.is_optional,
                ul.name AS unit, ul.plural AS unitPlural, 
                i.id_recipe, il.name, i.variable, il.uri
            FROM recipe_ingredient AS ri
            INNER JOIN ingredient AS i ON ri.id_ingredient = i.id_ingredient
            INNER JOIN ingredient_lang AS il ON i.id_ingredient = il.id_ingredient AND il.id_appacman_lang = :lang
            LEFT JOIN unit_lang AS ul ON ri.id_unit = ul.id_unit AND ul.id_appacman_lang = :lang
            WHERE ri.id_recipe = :id
            ORDER BY ri.order_ingredient, ri.is_alternative
        ';
        $params      = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT),
            'id'   => array('value' => $this->id, 'type' => PDO::PARAM_INT)
        );
        $ingredients = $this->mysql->query($sql, $params);

        if (count($ingredients)) {
            foreach ($ingredients as &$ingredient) {
                $ingredient['recipes'] = $this->getIngredientRecipes($ingredient['id_recipe']);
            }
            return $ingredients;
        }
        return array();
    }

    private function getIngredientRecipes($id): array
    {
        if (!empty($id)) {
            $sql     = '
                SELECT rl.uri, r.rest_time,
                    (IFNULL(prep_time, 0) + IFNULL(cook_time, 0)) AS time
                FROM recipe AS r
                INNER JOIN recipe_lang AS rl ON r.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
                WHERE r.id_recipe = :id
            ';
            $params  = array(
                'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT),
                'id'   => array('value' => $id, 'type' => PDO::PARAM_INT)
            );
            $recipes = $this->mysql->query($sql, $params);

            if (count($recipes)) {
                foreach ($recipes as &$recipe) {
                    $recipe['time']      = Detail::formatTime($recipe['time']);
                    $recipe['rest_time'] = Detail::formatTime($recipe['rest_time']);
                }
                return $recipes;
            }
        }
        return array();
    }

    private function getSteps($ingredients, $diners): array
    {
        $sql    = '
            SELECT rs.image_step AS image, rsl.description_step AS description
            FROM recipe_step AS rs
            INNER JOIN recipe_step_lang AS rsl ON rs.id_recipe_step = rsl.id_recipe_step AND rsl.id_appacman_lang = :lang
            WHERE rs.id_recipe = :id
            ORDER BY rs.order
        ';
        $params = array(
            'lang' => array('value' => $this->langID, 'type' => PDO::PARAM_INT),
            'id'   => array('value' => $this->id, 'type' => PDO::PARAM_INT)
        );
        $steps  = $this->mysql->query($sql, $params);

        if (count($steps)) {
            $config = Config::getInstance();
            $domain = $config->getDomain();

            foreach ($steps as &$step) {
                $fileID        = $step['image'];
                $step['image'] = $this->getFile($fileID, 'step');
                if (empty($step['image'])) {
                    $step['video'] = $this->getFile($fileID);
                }
                $step['description'] = $this->replaceRecipes($step['description'], $domain . _('receptes') . '/');
                $step['description'] = $this->replaceDiners($step['description'], $diners);
            }

            // replace ingredients
            foreach ($ingredients as $ingredient) {
                $uri   = $ingredient['uri'];
                $url   = $domain . _('recepta') . '/' . $uri;
                $class = 'black-color';
                if (count($ingredient['recipes'])) {
                    $class = 'secondary-color';
                }
                $link = "<a href=\"$url\" class=\"$class\"><b>" . mb_strtolower($ingredient['name']) . "</b></a>";

                foreach ($steps as &$step) {
                    $step['description'] = $this->getSpanAmount($step['description'], $uri, $ingredient, $link);
                }
            }
            return $steps;
        }
        return array();
    }

    private function replaceRecipes($description, $url): string
    {
        preg_match_all(self::PATTERN_RECIPE, $description, $matches);

        if (count($matches)) {
            for ($i = 0; $i < count($matches[0]); $i++) {
                $recipe = new Detail();
                $recipe->setID($matches[1][ $i ]);
                $recipeInfo = $recipe->get();
                if (count($recipeInfo)) {
                    $url         .= $recipeInfo['uri'];
                    $link        = "<a href=\"$url\" class=\"secondary-color\"><b>"
                        . mb_strtolower($recipeInfo['name'])
                        . "</b></a>";
                    $description = str_replace($matches[0][ $i ], $link, $description);
                }
            }
        }

        return $description;
    }

    private function replaceDiners($description, $diners): string
    {
        if ($diners > 0) {
            $spanDiners  = "<span class=\"diners\">$diners</span>";
            $description = str_replace(self::PATTERN_DINERS, $spanDiners, $description);
        }
        return $description;
    }

    private function getSpanAmount($description, $uri, $ingredient, $link = ''): string
    {
        $span   = '';
        $amount = $ingredient['amount'];

        //$variableName = str_replace('$', '', $ingredient['variable']);
        //$pattern = '/\$(['.$variableName.']{'.strlen($variableName).'}\b)/';
        $pattern = '/\\' . $ingredient['variable'] . '\b([\(]([^\)]+)[\)])?/';
        if ($amount > 0) {
            preg_match($pattern, $description, $matches);
            $fraction = 1;
            if (count($matches) == 3) {
                $fraction = $matches[2];
            }

            $unit = $unitPlural = '';
            if ($ingredient['unit']) {
                $unit = preg_replace(self::PATTERN_PARENTHESIS, '', $ingredient['unit']);
            }
            if ($ingredient['unitPlural']) {
                $unitPlural = preg_replace(self::PATTERN_PARENTHESIS, '', $ingredient['unitPlural']);
            }
            $data = " data-unit=\"$unit\" data-plural=\"$unitPlural\"";
            if ($fraction != 1) {
                $data .= " data-fraction=\"$fraction\"";
            }

            $amount = $amount * $fraction;
            if (is_float($amount)) {
                if ($amount < 1) {
                    $amount = number_format($amount, 1);
                } else {
                    $amount = number_format($amount);
                }
            }

            if ($amount > 0) {
                $span = "<span class=\"ingredient-$uri\"$data>$amount";
                if ($ingredient['unit']) {
                    if ($amount != 1 && !empty($unitPlural)) {
                        $span .= " $unitPlural";
                    } else {
                        $span .= " $unit";
                    }
                }
                $span .= '</span>';
            }
        } else {
            $span = $ingredient['unit'];
        }

        if ($span != '') {
            $span = " <small>($span)</small>";
        }

        return preg_replace($pattern, $link . $span, $description);
    }

}