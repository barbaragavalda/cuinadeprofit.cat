<?php

namespace Web\Controller;

class DefaultController extends Controller {

    public function run(){
        $this->template('404.twig');
    }

}