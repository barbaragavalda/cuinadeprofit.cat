<?php

namespace Web\Controller;

use Core\Utils\Config;
use Web\Model\Translate;

abstract class Controller extends \Core\Controller\Controller
{

    protected Translate $translate;

    public function __construct()
    {
        parent::__construct();
        $this->translate = new Translate();
    }

    abstract public function run();

    abstract protected function translate(): array;

    public function build()
    {
        $this->defaultMetatags();

        $config = Config::getInstance();
        $this->assign('donateButton', $config->get('donate-button'));
        $this->assign('staticVersion', 58);

        $this->run();
    }

    private function defaultMetatags()
    {
        $this->assign('canonical', $this->getCanonicalURL());
        $this->assign('webName', 'Cuina de Profit');
        $this->assign('metatagTitle', 'Cuina de Profit');
        $this->assign(
            'metatagKeywords',
            _(
                'receptes, receptes fàcils, receptes senzilles, cuina, cuina de profit, braves, les millors braves, barcelona'
            )
        );
        $this->assign(
            'metatagDescription',
            _(
                'En aquesta web trobareu algunes de les nostres receptes preferides que sabem que us encanten, però també receptes fàcils per poder fer en el dia a dia.'
            )
        );
        $this->assign(
            'metatagImage',
            array(
                'image' => $this->staticDomain . 'img/fb.jpg',
                'width' => 1200,
                'height' => 630
            )
        );
    }

    protected function overrideMetadata($info)
    {
        if (array_key_exists('metatag_title', $info) && $info['metatag_title']) {
            $this->assign('metatagTitle', $info['metatag_title'] . ' | Cuina de Profit');
        }
        if (array_key_exists('metatag_keywords', $info) && $info['metatag_keywords']) {
            $this->assign('metatagKeywords', $info['metatag_keywords']);
        }
        if (array_key_exists('metatag_description', $info) && $info['metatag_description']) {
            $this->assign('metatagDescription', $info['metatag_description']);
        }
        if (array_key_exists('metatag_image', $info) && $info['metatag_image']) {
            $this->assign('metatagImage', $info['metatag_image']);
        }
    }

}
