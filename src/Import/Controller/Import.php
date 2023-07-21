<?php

namespace Import\Controller;

use Core\Controller\Controller;
use Import\Model\Braves;

class Import extends Controller
{

    public function build()
    {
        $model = new Braves();
        $model->parse();

        $this->removeInfo();
        $this->json();
    }
}