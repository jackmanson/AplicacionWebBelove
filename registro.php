<?php

    require_once "controladores/controlador.sign_up.php";
    require_once "controladores/controlador.head.php";
    
    require_once 'modelos/sign_up.modelos.php';
    
    $login = new ControladorSign_up();
    $login -> sign_up();



