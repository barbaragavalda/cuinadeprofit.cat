<?php

namespace Web\Controller\Recipe;

use Web\Controller\Controller;

class Detail extends Controller
{

    private \Web\Model\Recipe\Detail $recipe;

    public function run()
    {
        $uri = $this->getParam('uri');

        if (!empty($uri)) {
            $this->recipe     = new \Web\Model\Recipe\Detail();
            $recipeInfo = $this->recipe->get($uri);
            if (count($recipeInfo)) {
                $this->assign('recipe', $recipeInfo);
                $this->overrideMetadata($recipeInfo);

                $this->assign('menu', 'recipes');
                $this->assign('translations', $this->translate());
                $this->template('recipe/detail.twig');
                return;
            }
        }

        $this->redirect($this->domain . '404');
    }

    protected function translate(): array{
        return $this->translate->translate(array('recepta'), 'recipe', $this->recipe->getID());
    }

}