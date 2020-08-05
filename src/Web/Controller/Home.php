<?php

namespace Web\Controller;

class Home extends Controller {

    public function run(){
        $this->template('home.twig');
    }

}