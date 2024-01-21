<?php

namespace Web\Model;

use Core\Model\Model;
use Web\Model\Recipe\Filter;
use Web\Model\Recipe\FilteredList;

class Home extends Model
{

    private array $ids = array();

    public function getRecent(): array
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

    public function getBraves(): array
    {
        $filter = new Filter();
        $years  = $filter->getPotatoYears(6, true);

        $notIn = array();
        foreach ($years as &$year) {
            $list = new Potato\FilteredList(1, 10);
            $list->setFilters(array('year' => array($year['id']), 'not_in' => $notIn));
            $list->initAll();
            $potatoes      = $list->getItemsPage();
            $notIn         = array_merge($notIn, array_column($potatoes, 'id'));
            $year['items'] = $potatoes;
        }
        return $years;
    }

    public function getRecipesToSucceed(): array
    {
        $list = new FilteredList(1, 8);
        $list->setFilters(array('highlighted' => true, 'not_in' => $this->ids));
        $list->initAll();
        return $list->getItemsPage();
    }

}