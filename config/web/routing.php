<?php

$config = array(

    'routing' => array(
        '404' => 'DefaultController',

        '' => 'Home',

        _('receta') . '/{uri}' => 'Recipe\\Detail',
        _('recetas') => 'Recipe\\Search',
        _('recetas') . '/{param1}' => 'Recipe\\Search',
        _('recetas') . '/{param1}/{param2}' => 'Recipe\\Search',
    )

);