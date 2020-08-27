<?php

namespace Web\Controller\Recipe;

use Web\Controller\Controller;

class Detail extends Controller {

    public function run(){
        $this->assign('menu', 'recipes');
        $this->template('recipe/detail.twig');
    }

}