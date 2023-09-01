<?php

    require_once "../../modelos/principal.modelos.php";
    require_once "../../controladores/controlador.principal.php";     
    
    // TODO: Casilla registro de correo
    $correo = $_POST['suscriEmail'];

    $suscription = new ControladorPrincipal();
    $suscription -> ctrPrincipalPortalSuscriptor($correo);


 
    header("location: ../../index.php");
?>