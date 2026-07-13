<?php

$config = array(

    'wallaby' => array(
        'app'       => 'Appacman',
        'folders'   => array('freimguork-appacman'),
        'languages' => array('ca')
    ),

    'cronjob' => array(
        'app'       => 'Cronjob',
        'folders'   => array('cronjob'),
        'languages' => array('ca')
    ),

    '{lang}' => array(
        'app'       => 'Web',
        'folders'   => array('web'),
        'languages' => array('ca', 'es')
    )

);

if (IS_DEV) {
    $config['import'] = array(
        'app'       => 'Import',
        'folders'   => array('import'),
        'languages' => array('ca')
    );
}
