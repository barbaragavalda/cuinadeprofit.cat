<?php

//defines
session_start();
define('DIR_ROOT', '../' );

//auto include all classes
include DIR_ROOT . 'vendor/autoload.php';

//init app debug mode
$b = new Core\Bootstrap( true );
$b->run();