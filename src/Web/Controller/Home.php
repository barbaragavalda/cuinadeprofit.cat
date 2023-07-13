<?php

namespace Web\Controller;

class Home extends Controller
{

    public function run()
    {
        $model = new \Web\Model\Home();
        $this->assign('recent', $model->getRecent());
        $this->assign('categories', $model->getCategories());
        $this->assign('succeed', $model->getRecipesToSucceed());

        $this->template('home.twig');
    }

    protected function translate(): array{
        return array();
    }

}