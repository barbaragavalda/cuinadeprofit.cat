<?php

namespace Web\Model\Recipe;

use Core\Model\Model;

class Detail extends Model {

    public function get($uri){
        $sql = '
            SELECT r.id_recipe, rl.name, rl.description, r.diners, r.prep_time, r.cook_time, r.image, r.link
            FROM recipe AS r
            INNER JOIN recipe_lang AS rl ON r.id_recipe = rl.id_recipe AND rl.id_appacman_lang = :lang
            WHERE rl.uri = :uri
        ';
        $params = array(
            'lang'  => array('value' => $this->langID,  'type' => \PDO::PARAM_INT),
            'uri'   => array('value' => $uri,           'type' => \PDO::PARAM_STR)
        );
        $recipe = $this->mysql->query($sql, $params);

        if( count($recipe) ){
            $recipe = $recipe[0];
            $this->id = $recipe['id_recipe'];

            $recipe['image'] = $this->getFile($recipe['image'], 'thumb');
            $recipe['specs'] = $this->getSpecs($recipe);
            $recipe['ingredients'] = $this->getIngredients();

            return $recipe;
        }
        return array();
    }

    /**
     * return recipe specifications
     * @param array $recipe
     * @return array
     */
    private function getSpecs($recipe){
        $specs = array();

        if( !empty($recipe['prep_time']) ){
            $specs[] = array('name' => _('Tiempo preparación'), 'value' => $recipe['prep_time']);
        }
        if( !empty($recipe['cook_time']) ){
            $specs[] = array('name' => _('Tiempo cocinando'), 'value' => $recipe['cook_time']);
        }
        if( !empty($recipe['diners']) ){
            $specs[] = array('name' => _('Comensales'), 'value' => $recipe['diners']);
        }

        return $specs;
    }

    private function getIngredients(){
        $sql = '
            SELECT ri.amount, ul.name AS unit, il.name, il.uri, ri.is_alternative
            FROM recipe_ingredient AS ri
            INNER JOIN ingredient_lang AS il ON ri.id_ingredient = il.id_ingredient AND il.id_appacman_lang = :lang
            INNER JOIN unit_lang AS ul ON ri.id_unit = ul.id_unit AND ul.id_appacman_lang = :lang
            WHERE ri.id_recipe = :id
            ORDER BY ri.order_ingredient ASC
        ';
        $params = array(
            'lang'  => array('value' => $this->langID,  'type' => \PDO::PARAM_INT),
            'id'    => array('value' => $this->id,      'type' => \PDO::PARAM_INT)
        );
        $ingredients = $this->mysql->query($sql, $params);

        if( count($ingredients) ){
            return $ingredients;
        }
        return array();
    }

}