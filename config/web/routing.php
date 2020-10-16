<?php

$config = array(

    'routing' => array(
        '404' => 'DefaultController',

        '' => 'Home',

        _('receta') . '/{uri}'             => 'Recipe\\Detail',
        _('categoria') . '/{uri}'          => 'Recipe\\Search\\Category',
        _('categoria') . '/{uri}/{page}'   => 'Recipe\\Search\\Category',
        _('dificultad') . '/{uri}'         => 'Recipe\\Search\\Difficulty',
        _('dificultad') . '/{uri}/{page}'  => 'Recipe\\Search\\Difficulty',
        _('etiqueta') . '/{uri}'           => 'Recipe\\Search\\Tag',
        _('etiqueta') . '/{uri}/{page}'    => 'Recipe\\Search\\Tag',
        _('ingrediente') . '/{uri}'        => 'Recipe\\Search\\Ingredient',
        _('ingrediente') . '/{uri}/{page}' => 'Recipe\\Search\\Ingredient'
    )

);