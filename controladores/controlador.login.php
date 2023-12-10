<?php

class ControladorLogin{


    public function login(){

        include "vistas/login.php";

    }


    //CONTACTAR Y REGISTROS DE COMENTARIOS
    public function controlLogin($email,$clave){
        $controlLogin = new ModeloLogin();
        $controlLogin->modeloLogin($email,$clave);
    }

        
}