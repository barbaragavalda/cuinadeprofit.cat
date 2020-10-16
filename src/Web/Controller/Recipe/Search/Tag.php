<?php

namespace Web\Controller\Recipe\Search;

use Web\Model\Recipe\Util;

class Tag extends Search
{

    protected function search($uri)
    {
        $title = null;
        $util  = new Util();
        $tag   = $util->getTag($uri);
        if (count($tag)) {
            $this->list->setFilters(array('tag' => $tag['id']));
            $title = $tag['name'];
        }

        if ($title != null) {
            $this->assign('title', _('Etiqueta') . ': ' . $title);
            return true;
        }
        $this->assign('title', _('Etiqueta'));
        return false;
    }

}