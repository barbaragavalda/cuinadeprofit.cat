<?php

namespace Web\Controller\Recipe;

use Web\Controller\Controller;
use Web\Model\Recipe\FilteredList;
use Web\Model\Recipe\Util;

class Search extends Controller
{

    /**
     * @var int current page
     */
    private $page = 1;

    /**
     * @var array uri filters
     */
    private $filters = array();

    /**
     * @var \Web\Model\Recipe\FilteredList
     */
    protected $list = null;

    public function run()
    {
        $this->filter();
        $this->list = new FilteredList($this->page);
        $this->list->setFilters($this->filters);
        $this->list->initAll();
        $this->assign('items', $this->list->getItemsPage());
        $this->assign('pagination', $this->list->paginate());
        $this->assign('filters', $this->filters);

        $util = new Util();
        $this->assign('difficulties', $util->getDifficulty());
        $this->assign('categories', $util->getCategory());
        $this->assign('tags', $util->getTag());
        $this->assign('ingredients', $util->getIngredient());
        $this->template('recipe/list.twig');
    }

    private function filter(){
        $this->checkFilter('param1');
        $this->checkFilter('param2');
    }

    private function checkFilter($key){
        $param = $this->getParam($key);
        if( is_numeric($param) ){
            $this->page = $param;
        }else{
            if( !empty($param)){
                $util     = new Util();

                // difficulty
                $difficulty = $util->getDifficulty($param);
                if (count($difficulty)) {
                    $this->filters['difficulty'] = $difficulty['id'];
                }

                // category
                $category = $util->getCategory($param);
                if (count($category)) {
                    $this->filters['category'] = $category['id'];
                }

                // ingredient
                $ingredient = $util->getIngredient($param);
                if (count($ingredient)) {
                    $this->filters['ingredient'] = $ingredient['id'];
                }

                // tag
                $tag = $util->getTag($param);
                if (count($tag)) {
                    $this->filters['tag'] = $tag['id'];
                }
            }
        }
    }

}