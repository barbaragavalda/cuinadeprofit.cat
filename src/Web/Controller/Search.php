<?php

namespace Web\Controller;

use Web\Model\Recipe\Filter;
use Web\Model\Recipe\FilteredList;

abstract class Search extends Controller
{

    protected array   $filters = array();
    protected ?Filter $filter  = null;

    public function run()
    {
        $this->filter = new Filter();
        $this->filter();
    }

    private function filter()
    {
        $params = $this->checkParams();

        $this->filters = array('page' => 1);
        foreach ($params as $param) {
            if (is_numeric($param)) {
                $this->filters['page'] = $param;
            } else {
                $explode = explode('&', $param);
                foreach ($explode as $value) {
                    $this->checkParam($value);
                }
            }
        }

        if (isset($_GET['q'])) {
            $this->filters['query'] = $_REQUEST['q'];
        }
    }

    private function checkParams(): array
    {
        $params = array();

        for ($i = 1; $i < 7; $i++) {
            $param = $this->getParam('param' . $i);
            if ($param !== false) {
                $params[] = $param;
            }
        }

        return $params;
    }

    private function checkParam($value)
    {
        // difficulty
        $difficulty = $this->filter->getDifficulty($value);
        if (count($difficulty)) {
            $this->addFilter(Filter::DIFFICULTY, $difficulty['id']);
        }

        // time
        $time = $this->filter->getTime($value);
        if (count($time)) {
            $this->filters[ Filter::TIME ] = $time;
        }

        // category
        $category = $this->filter->getCategory($value);
        if (count($category)) {
            $this->addFilter(Filter::CATEGORY, $category['id']);
        }

        // ingredient
        $ingredient = $this->filter->getIngredient($value);
        if (count($ingredient)) {
            $this->addFilter(Filter::INGREDIENT, $ingredient['id']);
        }

        // tag
        $tag = $this->filter->getTag($value);
        if (count($tag)) {
            $this->addFilter(Filter::TAG, $tag['id']);
        }
    }

    private function addFilter($key, $value)
    {
        if (!array_key_exists($key, $this->filters)) {
            $this->filters[ $key ] = array();
        }
        $this->filters[ $key ][] = $value;
    }

}