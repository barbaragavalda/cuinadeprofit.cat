<?php

namespace Web\Model;

use Core\Model\Model;
use Web\Model\Recipe\Filter;
use Web\Model\Recipe\FilteredList;

class Home extends Model
{

    private $ids = array();

    public function getRecent()
    {
        $list = new FilteredList(1, 5);
        $list->setFilters(array('new' => true));
        $list->initAll();
        $recent = $list->getItemsPage();

        if (count($recent)) {
            $this->ids = array_column($recent, 'id_recipe');
        }

        return $recent;
    }

    public function getCategories()
    {
        $filter = new Filter();
        $tags   = $filter->getTag(null, true);
        $notIn  = $this->ids;
        foreach ($tags as &$tag) {
            $list = new FilteredList(1, 10);
            $list->setFilters(array('tag' => array($tag['id']), 'not_in' => $notIn));
            $list->initAll();
            $recipes        = $list->getItemsPage();
            $notIn          = array_merge($notIn, array_column($recipes, 'id_recipe'));
            $tag['recipes'] = $recipes;
        }
        return $tags;
    }

    public function getRecipesToSucceed()
    {
        $list = new FilteredList(1, 8);
        $list->setFilters(array('highlighted' => true, 'not_in' => $this->ids));
        $list->initAll();
        return $list->getItemsPage();
    }

}