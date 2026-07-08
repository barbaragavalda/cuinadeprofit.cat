<?php

namespace Import\Controller;

use Core\Controller\Controller;
use Core\Routing\Attribute\Route;
use Import\Model\Place;

class Update extends Controller
{

    #[Route('/update', methods: ['GET', 'POST'], name: 'import.update')]
    public function build(): void
    {
        $model = new Place();
        $model->init();

        $this->removeInfo();
        $this->json();
    }
}