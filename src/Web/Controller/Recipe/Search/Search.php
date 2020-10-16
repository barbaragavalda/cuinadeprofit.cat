<?php

namespace Web\Controller\Recipe\Search;

use Web\Controller\Controller;
use Web\Model\Recipe\FilteredList;

abstract class Search extends Controller
{

    /**
     * @var \Web\Model\Recipe\FilteredList
     */
    protected $list = null;

    public function run()
    {
        $uri = $this->getParam('uri');

        if (!empty($uri)) {
            $page = $this->getParam('page');
            if (empty($page)) {
                $page = 1;
            }

            $this->list = new FilteredList($page);
            if ($this->search($uri)) {
                $this->list->initAll();
                $this->assign('items', $this->list->getItemsPage());
                $this->assign('pagination', $this->list->paginate());
            }
        }

        $this->template('recipe/list.twig');
    }

    abstract protected function search($uri);

}