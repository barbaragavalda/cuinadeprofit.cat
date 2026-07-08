<?php

namespace Web\Controller;

use Core\Routing\Attribute\Route;

#[Route('/404', name: 'web.default')]
class DefaultController extends Controller
{

    public function run(): void
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