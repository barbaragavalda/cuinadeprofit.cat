<?php

namespace Web\Controller;

class DefaultController extends Controller {

    public function run(){
        $this->assign('menu', '404');
        $this->template('404.twig');
    }

}