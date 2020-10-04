<?php

namespace Web\Controller\Recipe;

use Web\Controller\Controller;

class Detail extends Controller {

    public function run(){
        $uri = $this->getParam('uri');

        if( !empty($uri) ){
            $recipe = new \Web\Model\Recipe\Detail();
            $recipeInfo = $recipe->get($uri);
            if( count($recipeInfo) ){
                $this->assign('recipe', $recipeInfo);

                $this->assign('menu', 'recipes');
                $this->template('recipe/detail.twig');
                return;
            }
        }

        $this->redirect($this->domain . '404');
    }

}