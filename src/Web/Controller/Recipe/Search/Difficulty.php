<?php

namespace Web\Controller\Recipe\Search;

use Web\Model\Recipe\Util;

class Difficulty extends Search
{

    protected function search($uri)
    {
        $title    = null;
        $util     = new Util();
        $difficulty = $util->getDifficulty($uri);
        if (count($difficulty)) {
            $this->list->setFilters(array('difficulty' => $difficulty['id']));
            $title = $difficulty['name'];
        }

        if ($title != null) {
            $this->assign('title', _('Dificultad') . ': ' . $title);
            return true;
        }
        $this->assign('title', _('Dificultad'));
        return false;
    }

}