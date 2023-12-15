<?php

    require_once 'modelos/sign_up.modelos.php';
    require_once "controladores/controlador.sign_up.php";
    
    $login = new ControladorSign_up();
    $login -> sign_up();



