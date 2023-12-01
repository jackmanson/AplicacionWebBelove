<?php
	//header("location: vistas/plantilla.php");

	// LOGIN BACKEND
    require_once "modelos/login.modelos.php";
	require_once "controladores/controlador.login.php";


	$redireccionPageIndex = new ControladorLogin();
	$redireccionPageIndex -> login();
	

	


