<?php

namespace Web\Controller;

class DefaultController extends Controller
{

    public function run()
    {
        $this->assign('menu', '404');
        $this->assign('translations', $this->translate());
        $this->template('404.twig');
    }

    protected function translate(): array
    {
        return $this->translate->translate(array('404'));
    }
}