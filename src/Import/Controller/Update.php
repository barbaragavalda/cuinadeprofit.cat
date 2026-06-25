<?php

namespace Import\Controller;

use Core\Controller\Controller;
use Import\Model\Place;

class Update extends Controller
{

    public function build(): void
    {
        $model = new Place();
        $model->init();

        $this->removeInfo();
        $this->json();
    }
}