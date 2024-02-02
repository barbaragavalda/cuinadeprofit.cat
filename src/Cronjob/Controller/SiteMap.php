<?php

namespace Cronjob\Controller;

use Core\Controller\Controller;
use Core\Utils\Config;
use DateTime;
use Web\Model\Recipe\FilteredList;

class SiteMap extends Controller
{

    public function build()
    {
        $config = Config::getInstance();
        $this->assign('domain', $config->getBaseDomain());

        $date = new DateTime();
        $this->assign('now', $date->format('Y-m-d H:i:s'));

        $languages = array('ca' => 1, 'es' => 2);
        $this->assign('menu_ca', array(
            array('name' => 'Receptes', 'uri' => 'receptes'),
            array('name' => 'Braves', 'uri' => 'braves'),
            array('name' => 'Restaurants', 'uri' => 'restaurants')
        ));
        $this->assign('menu_es', array(
            array('name' => 'Recetas', 'uri' => 'recetas'),
            array('name' => 'Bravas', 'uri' => 'bravas'),
            array('name' => 'Restaurantes', 'uri' => 'restaurantes')
        ));
        foreach ($languages as $language => $langID) {
            $model = new FilteredList(1, PHP_INT_MAX, $langID);
            $model->initAll();
            $this->assign("recipes_$language", $model->getItemsPage(false));
        }
        $this->xml('sitemap.twig', 'sitemap.xml');
    }

}
