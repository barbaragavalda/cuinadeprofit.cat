<?php

namespace Web\Controller\Restaurant;

use Web\Controller\Controller;
use Web\Model\Restaurant\FilteredList;

class Search extends \Web\Controller\Search
{

    public function run()
    {
        parent::run();

        $list = new FilteredList($this->filters['page']);
        $list->setFilters($this->filters);
        $list->initAll();
        $this->assign('restaurants', $list->getItemsPage());
        $this->assign('pagination', $list->paginate());

        $this->assign('menu', 'restaurants');
        $this->template('restaurant/list.twig');
    }

}