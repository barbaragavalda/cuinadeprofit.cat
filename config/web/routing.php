<?php

$config = array(

    'routing' => array(
        ''    => 'Home',
        '404' => 'DefaultController',

        _('recepta') . '/{uri}'             => 'Recipe\\Detail',
        _('recepta') . '/' . _('aleatoria') => 'Recipe\\Detail',

        _('receptes')                                                            => 'Recipe\\Search',
        _('receptes') . '/{param1}'                                              => 'Recipe\\Search',
        _('receptes') . '/{param1}/{param2}'                                     => 'Recipe\\Search',
        _('receptes') . '/{param1}/{param2}/{param3}'                            => 'Recipe\\Search',
        _('receptes') . '/{param1}/{param2}/{param3}/{param4}'                   => 'Recipe\\Search',
        _('receptes') . '/{param1}/{param2}/{param3}/{param4}/{param5}'          => 'Recipe\\Search',
        _('receptes') . '/{param1}/{param2}/{param3}/{param4}/{param5}/{param6}' => 'Recipe\\Search',

        _('braves')                            => 'Potato\\Map',
        _('braves') . '/pro'                   => 'Potato\\Map',
        _('braves') . '/pro/{param1}'          => 'Potato\\Map',
        _('braves') . '/pro/{param1}/{param2}' => 'Potato\\Map',
        _('braves') . '/{param1}'              => 'Potato\\Map',

        _('restaurants') . '/' . _('mapa') => 'Restaurant\\Map',
        _('restaurants')                   => 'Restaurant\\Search',
        _('restaurants') . '/{param1}'     => 'Restaurant\\Search',
    )

);