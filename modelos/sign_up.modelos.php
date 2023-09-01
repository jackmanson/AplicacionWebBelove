<?php

require_once "conexion.modelos.php";

class ModeloSignUp{
	// estatic --> se usa cuando en la funcion recibe un valor, revisar si tiene otras reglas
	static public function modeloRegistro($tabla){
            /*	Conexion --> es la clase, conectarPortal es el metodo o funcion --> los dos puntos dobles llama a la clase y la funcion
                    Asi ya no se tiene que crear ningun objeto y es directo
                    prepare --> es otra funcion para hacer consultas SQL
            */ 
            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

            $stmt -> execute(); // esto ejecuta la funcion

            return $stmt ->fetchAll(); // fetch()--> llama un registro y fetchAll() --> llama todos los registros

            $stmt -> close();
	}
        
        
        // REGISTRO procedural
        static public function modeloRegistroProcedural($tabla){

            $conexion = Conexion::conectarProcedural();
            
            mysqli_query($conexion, "SET NAMES 'utf8'");
            $sql = "SELECT * FROM $tabla";
            
            $seleccion = mysqli_query($conexion,$sql);
            
        // Check connection
        //if (!$seleccion) {
        //    die("<h1>Conección Fallida de sign_up.modelos.php:</h1>" . mysqli_connect_error());
        //}
            
            return $seleccion;
            
            //unset($respuesta);
    
        }
        
        
        // REGISTRO DE USUARIOS
        static public function modeloRegistroPersonas($tabla,$datos){
            $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(nombres,apellido_paterno,apellido_materno,foto,direccion,numero_hijos,fecha_nacimiento,fk_id_departamento_4,fk_id_provincia_4,fk_id_distrito_4,fk_id_nacionalidad_3,fk_id_estado_civil_1,fk_id_estado_actividad_1,fecha_registro)
            VALUES (:nombres,:apellidoPaterno,:apellidoMaterno,:foto,:direccion,:cantHijos,:fechaNacimiento,:departamento,:provincia,:distrito,:nacionalidad,:estadoCivil,:estado_actividad,:fecha_registro)");    

            $stmt->bindParam("nombres", $_POST["nombres"]);
            $stmt->bindParam("nombres", $_POST["apellidoPaterno"]);
            $stmt->bindParam("nombres", $_POST["apellidoMaterno"]);
            $stmt->bindParam("nombres", $_POST["nacionalidad"]);
            $stmt->bindParam("nombres", $_POST["estadoCivil"]);
            $stmt->bindParam("nombres", $_POST["departamento"]);
            $stmt->bindParam("nombres", $_POST["provincia"]);
            $stmt->bindParam("nombres", $_POST["distrito"]);
            $stmt->bindParam("nombres", $_POST["direccion"]);
            $stmt->bindParam("nombres", $_POST["fechaNacimiento"]);
            $stmt->bindParam("nombres", $_POST["cantHijos"]);
            $stmt->bindParam("nombres", $_POST["nombres"]);


        }
        

}
  /*
                 COMPRAR VARIABLES POST CON LAS DEL CONTROLADOR
  
                    $regDatos = array(
                        "nombres" =>  ,
                        "apellidoPaterno" => $_POST[""], -- OK
                        "apellidoMaterno" => $_POST[""], -- OK
                        "tipoDocumento" => $_POST["tipoDocumento"], ---> REVISAR COMO HACER CONSULTA
                        "numeroDocumento" => $_POST["numeroDocumento"], ---> REVISAR COMO HACER CONSULTA
                        "nacionalidad" => $_POST[""], -- OK
                        "estadoCivil" => $_POST[""], -- OK
                        "departamento" => $_POST[""], -- OK
                        "provincia" => $_POST[""], -- OK
                        "distrito" => $_POST[""], -- OK
                        "direccion" => $_POST[""],  -- OK
                        "fechaNacimiento" => $_POST[""], -- OK
                        "cantHijos" => $_POST[""], -- OK
                         // Revisar como verificar la imagen y subir la imagen
                        "estado_actividad" => 10   -- OK
                    );
                    
                    $regCuenta = Array(
                        "nick" => $_POST["nick"],
                        "email" => $_POST["email"],
                        "pwd" => $encriptacion,
                        "regTerminos" => $_POST["regTerminos"],
                        "estado_actividad" => 10
                    );
                    
                    
                    */