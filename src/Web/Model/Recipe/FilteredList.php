<?php

namespace Web\Model\Recipe;

use Core\Model\Paginated;

class FilteredList extends Paginated
{

    public function __construct($page)
    {
        parent::__construct($page, 15, false);
    }

    public function initAll()
    {
        $where     = '';
        $innerJoin = '';
        $params    = array(
            'lang' => array('value' => $this->langID, 'type' => \PDO::PARAM_INT)
        );

        if (array_key_exists('category', $this->filters)) {
            $innerJoin    = '
                INNER JOIN recipe_ingredient AS ri ON r.id_recipe = ri.id_recipe
                INNER JOIN ingredient AS i ON i.id_ingredient = ri.id_ingredient
                INNER JOIN ingredient_category AS ic ON i.id_ingredient_category = ic.id_ingredient_category AND ic.id_ingredient_category = :id
            ';
            $params['id'] = array('value' => $this->filters['category'], 'type' => \PDO::PARAM_INT);
        }

        if (array_key_exists('difficulty', $this->filters)) {
            $where        = 'WHERE r.id_difficulty = :id';
            $params['id'] = array('value' => $this->filters['difficulty'], 'type' => \PDO::PARAM_INT);
        }
        if (array_key_exists('ingredient', $this->filters)) {
            $innerJoin    = '
                INNER JOIN recipe_ingredient AS ri ON r.id_recipe = ri.id_recipe
                INNER JOIN ingredient AS i ON i.id_ingredient = ri.id_ingredient AND i.id_ingredient = :id
            ';
            $params['id'] = array('value' => $this->filters['ingredient'], 'type' => \PDO::PARAM_INT);
        }
        if (array_key_exists('tag', $this->filters)) {
            $innerJoin    = '
                INNER JOIN recipe_tag AS rt ON r.id_recipe = rt.id_recipe
                INNER JOIN tag AS t ON t.id_tag = rt.id_tag AND t.id_tag = :id
            ';
            $params['id'] = array('value' => $this->filters['tag'], 'type' => \PDO::PARAM_INT);
        }

        $sql     = '
            SELECT DISTINCT r.id_recipe, r.prep_time, r.cook_time, r.image, (prep_time + cook_time) AS time,
                rl.name, rl.uri, rl.description,
                dl.name AS difficulty, dl.uri AS difficultyURI
            FROM recipe AS r
            INNER JOIN recipe_lang AS rl ON r.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
            INNER JOIN difficulty_lang AS dl ON r.id_difficulty = dl.id_difficulty AND dl.id_appacman_lang = :lang
            ' . $innerJoin . '
            ' . $where . '
            ORDER BY r.created DESC, rl.name ASC
        ';
        $recipes = $this->mysql->query($sql, $params);

        $this->items = array();
        if (count($recipes)) {
            foreach ($recipes as &$recipe) {
                $recipeModel = new Detail();
                $recipeModel->setID($recipe['id_recipe']);
                $recipe['image'] = $this->getFile($recipe['image'], 'list');
                $recipe['time'] = Detail::formatTime($recipe['time']);
                $recipe['tags']  = $recipeModel->getTags(false);
            }
            $this->items = $recipes;
        }
    }

}