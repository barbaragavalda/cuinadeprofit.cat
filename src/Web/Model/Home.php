<?php

namespace Web\Model;

use Core\Model\Model;
use Web\Model\Recipe\FilteredList;

class Home extends Model
{

    public function getRecent(){
        $list = new FilteredList(1, 5);
        $list->setFilters(array('new' => true));
        $list->initAll();
        return $list->getItemsPage();
    }

    public function getRecipesToSucceed(){
        
    }

}