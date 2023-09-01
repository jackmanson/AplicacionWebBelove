<?php

    require_once "../../modelos/principal.modelos.php";
    require_once "../../controladores/controlador.principal.php";     
    
    // TODO: principal formulario para contactar 
    $name = $_POST['name'];
    $email = $_POST['email'];
    $comments = $_POST['comments'];

    $contactar = new ControladorPrincipal();
    $contactar -> ctrPrincipalPortalContactar($name,$email,$comments);


    header("location: ../../index.php");
?>