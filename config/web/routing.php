<?php

$config = array(

    'routing' => array(
        ''    => 'Home',
        '404' => 'DefaultController',

        _('receta') . '/{uri}'             => 'Recipe\\Detail',
        _('receta') . '/' . _('aleatoria') => 'Recipe\\Detail',

        _('recetas')                                                            => 'Recipe\\Search',
        _('recetas') . '/{param1}'                                              => 'Recipe\\Search',
        _('recetas') . '/{param1}/{param2}'                                     => 'Recipe\\Search',
        _('recetas') . '/{param1}/{param2}/{param3}'                            => 'Recipe\\Search',
        _('recetas') . '/{param1}/{param2}/{param3}/{param4}'                   => 'Recipe\\Search',
        _('recetas') . '/{param1}/{param2}/{param3}/{param4}/{param5}'          => 'Recipe\\Search',
        _('recetas') . '/{param1}/{param2}/{param3}/{param4}/{param5}/{param6}' => 'Recipe\\Search',
    )

);