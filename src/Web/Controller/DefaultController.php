<?php

namespace Web\Controller;

use Core\Controller\Controller;

class DefaultController extends Controller {

    public function build(){
        $this->template('404.twig');
    }

}