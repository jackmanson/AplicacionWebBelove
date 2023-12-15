<?php

class ControladorSign_up{
    
    // REGISTRAR CLIENTES
    public function sign_up(){

        include "vistas/sign_up.php";

    }
    
    //LLAMA PLANTILLA TERMINOS Y CONDICIONES
    public function terminosCondiciones(){
        
        include "vistas/modulos/sign_up.terminos.condiciones.php";
        
    }
    
    // MODAL TERMINOS
    public function footer(){
        
        include 'vistas/modulos/sign_up.footer.php';
        
    }


    // LLAMA AL CABEZOTE
    public function cabezoteSignUp(){
        
        include 'vistas/modulos/sign_up.cabezote.php';
        
    }
    
    //TRAEMOS LOS TIPO DE DOCUMENTO
    public function ctrRegistroTD(){
        $tabla = "tipo_documento";
        
        $respuesta = ModeloSignUp::modeloRegistroProcedural($tabla);
       
        return $respuesta;
    }
    
    //TRAEMOS LOS TIPO DE NACIONALIDAD
    public function ctrRegistroN(){
        $tabla = "paises";
        
        $respuesta = ModeloSignUp::modeloRegistroProcedural($tabla);

        return $respuesta;
    }
    
    //TRAEMOS LOS TIPO DE ESTAOD CIVIL
    public function ctrRegistroEC(){
        $tabla = "estado_civil";
        
        $respuesta = ModeloSignUp::modeloRegistroProcedural($tabla);

        return $respuesta;
    }
    
    //TRAEMOS LOS TIPO DE TELEFONO
    public function ctrRegistroTT(){
        $tabla = "tipo_telefono";
        
        $respuesta = ModeloSignUp::modeloRegistroProcedural($tabla);

        return $respuesta;
    }
    
    //TRAEMOS LOS TIPO DE DISTRITO
    public function ctrRegistroD(){
        $tabla = "distrito";
        
        $respuesta = ModeloSignUp::modeloRegistroProcedural($tabla);

        return $respuesta;
    }
    
    //TRAEMOS LOS TIPO DE PROVINCIA
    public function ctrRegistroP(){
        $tabla = "provincia";
        
        $respuesta = ModeloSignUp::modeloRegistroProcedural($tabla);

        return $respuesta;
    }
    
    //TRAEMOS LOS TIPO DE DEPARTAMENTO
    public function ctrRegistroDP(){
        $tabla = "departamento";
        
        $respuesta = ModeloSignUp::modeloRegistroProcedural($tabla);

        return $respuesta;
    }
    

    
}