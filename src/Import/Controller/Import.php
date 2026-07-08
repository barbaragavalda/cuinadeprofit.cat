<?php

namespace Import\Controller;

use Core\Controller\Controller;
use Core\Routing\Attribute\Route;
use Import\Model\Braves;

class Import extends Controller
{

    #[Route('/braves', methods: ['GET', 'POST'], name: 'import.braves')]
    public function build(): void
    {
        $model = new Braves();
        $model->parse();

        $this->removeInfo();
        $this->json();
    }
}