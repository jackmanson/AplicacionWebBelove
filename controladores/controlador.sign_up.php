<?php

class ControladorSign_up{
    
    // LLAMA A LA PLANTILLA DE REGISTRO
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
    
    // REGISTRO DE USUARIO
    public function ctrRegistroUsuario(){
        
        if(isset($_POST["nombres"])){
            
            if(preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nombres"] )&&
                preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["apellidoPaterno"] )&&
                preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["apellidoMaterno"] )&&
                preg_match('/^[0-9]+$/', $_POST["tipoDocumento"] )&&     
                preg_match('/^[0-9]+$/', $_POST["numeroDocumento"] )&&
                preg_match('/^[0-9]+$/', $_POST["nacionalidad"] )&&     
                preg_match('/^[0-9]+$/', $_POST["estadoCivil"] )&&
                preg_match('/^[0-9]+$/', $_POST["tipoTelefono"] )&&
                preg_match('/^[0-9]+$/', $_POST["numeroTipoTelefono"] )&&
                preg_match('/^[0-9]+$/', $_POST["departamento"] )&&     
                preg_match('/^[0-9]+$/', $_POST["provincia"] )&&      
                preg_match('/^[0-9]+$/', $_POST["distrito"] )&&
                preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ#º ]+$/', $_POST["direccion"] )&&         
                preg_match('/^[0-9-]+$/', $_POST["fechaNacimiento"] )&&
                preg_match('/^[0-9]+$/', $_POST["cantHijos"] )&&  
                     // Revisar como verificar la imagen
                preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nick"] )&& 
                preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_+)*[@][a-zA-Z0-9_]+([.][a-z-A-Z0-9_]+)*[.][a-zA-Z]{2,4}$/', $_POST["email"]) &&
                preg_match('/^[a-zA-Z0-9]+$/', $_POST["pwd"]) &&
                preg_match('/^[a-zA-Z0-9]+$/', $_POST["rePwd"]) &&
                preg_match('/^[a-zA-Z0-9]+$/', $_POST["regTerminos"]) ){
                
                
                if($_POST["pwd"] == $_POST["rePwd"]){
                    $regDatos = array(
                        "nombres" =>  $_POST["nombres"],
                        "apellidoPaterno" => $_POST["apellidoPaterno"],
                        "apellidoMaterno" => $_POST["apellidoMaterno"],
                        "tipoDocumento" => $_POST["tipoDocumento"],
                        "numeroDocumento" => $_POST["numeroDocumento"],
                        "nacionalidad" => $_POST["nacionalidad"],
                        "estadoCivil" => $_POST["estadoCivil"],
                        "tipoTelefono" => $_POST["tipoTelefono"],
                        "numeroTipoTelefono" => $_POST["numeroTipoTelefono"],
                        "departamento" => $_POST["departamento"],
                        "provincia" => $_POST["provincia"],
                        "distrito" => $_POST["distrito"],
                        "direccion" => $_POST["direccion"],
                        "fechaNacimiento" => $_POST["fechaNacimiento"],
                        "cantHijos" => $_POST["cantHijos"],
                         // Revisar como verificar la imagen y subir la imagen
                        "estado_actividad" => 10   
                    );

                    $encriptacion = password_hash($_POST["pwd"], PASSWORD_DEFAULT, array("cost"=>10));
                    
                    $regCuenta = Array(
                        "nick" => $_POST["nick"],
                        "email" => $_POST["email"],
                        "pwd" => $encriptacion,
                        "regTerminos" => $_POST["regTerminos"],
                        "estado_actividad" => 10
                    );
                    
                    
                    $tablaPersonas = "personas";
                    $tablaUsuarios = "usuarios";
                    
                    $respuestaPersonas = ModeloSignUp::modeloRegistroPersonas($tablaPersonas,$regDatos);
                    $respuestaUsuarios = ModeloSignUp::modeloRegistroUsuarios($tablaUsuarios,$regCuenta);
                    
                    var_dump($respuestaPersonas);
                    var_dump($respuestaUsuarios);
                    
                }else{
                    echo '<script> swal("Error de Registro!", "Su contraaseña no coincide!", "error"); </script>';
                }

                
            }else{
                
                if(!isset($_POST["myHidden"]) && ($_POST["myHidden"] === 1)){
                    echo '<script> swal("Error de Registro!", "Existe un error!", "error"); </script>';
                }
                if(!isset($_POST["myHidden"])){
                    echo '<h2 style="color: red">Existe un error!</h2>';
                }
                
            }
        }
        
        
        
        
    }

    
}