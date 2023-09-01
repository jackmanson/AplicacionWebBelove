<?php

require_once "controladores/controlador.sign_up.php";
require_once "controladores/controlador.head.php";
    
    
function mostrarProvincia(){

    $dataP = ControladorSign_up::ctrRegistroP();
    $objeto = array();
    $contador = 0;
    while($varDato = mysqli_fetch_assoc($dataP)){
        $objeto[$contador] =  '{"'.$varDato['id_provincia'].'","'.$varDato['nombre_provincia'].'"}';
        $contador++;
    } 
    return $objeto;
}


// [
//	{"rotulo":"COMERCIAL MONELY","slogan":"Especialistas en procesos textiles"}
// ]