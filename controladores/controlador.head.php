<?php


class ControladorHead{
    
    // IMPORTA EL HEAD A LAS PAGE
    public function head(){

        include "vistas/modulos/head.modelos.php";

    }


    // IMPORTA EL HEAD PARA LOGIN
    public function headLogin(){

        include "vistas/modulos/head.login.php";

    }

    
}
