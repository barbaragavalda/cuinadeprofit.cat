<?php

namespace Web\Controller\Restaurant;

use Core\Routing\Attribute\Route;
use Core\Utils\Config;
use Web\Model\Restaurant\FilteredList;

#[Route('/restaurants', name: 'restaurant.search')]
class Search extends Restaurant
{

    function search(): void
    {
        parent::search();

        $config = Config::getInstance();
        $apiKey = $config->get('maps-key');

        $this->list     = new FilteredList($apiKey, $this->filters['page']);
        $this->template = 'restaurants/list.twig';
    }

    protected function translate(): array
    {
        return $this->translate->translate(array('restaurants'));
    }

}