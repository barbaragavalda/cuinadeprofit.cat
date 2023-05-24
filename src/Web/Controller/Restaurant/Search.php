<?php

namespace Web\Controller\Restaurant;

use Web\Controller\Controller;
use Web\Model\Restaurant\FilteredList;

class Search extends \Web\Controller\Search
{

    function search()
    {
        $this->list = new FilteredList($this->filters['page']);
        $this->assign('link', _('restaurants'));

        $this->assign('menu', 'restaurants');
        $this->assign('type', 'restaurant');
    }

}