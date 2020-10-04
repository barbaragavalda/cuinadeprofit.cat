<?php

$config = array(

    'routing' => array(
        '404'                  => 'DefaultController',

        ''                     => 'Home',
        _('receta') . '/{uri}' => 'Recipe\\Detail'
    )

);