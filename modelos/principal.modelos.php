<?php

require_once "conexion.modelos.php";

class ModeloPrincipal{
	// estatic --> se usa cuando en la funcion recibe un valor, revisar su tiene otras reglas
	static public function modeloEstiloPrinciapal($tabla){
        /*	Conexion --> es la clase, conectar es el metodo o funcion --> los dos puntos dobles llama a la clase y la funcion
                Asi ya no se tiene que crear ningun objeto y es directo
                prepare --> es otra funcion para hacer consultas SQL
        */ 
        $stmt = Conexion::conectarPortal()->prepare("SELECT * FROM $tabla");

        $stmt -> execute(); // esto ejecuta la funcion

        return $stmt -> fetch(); // fetch()--> llama un registro y fetchAll() --> llama todos los registros

        $stmt -> close();
	}

        
    // Insertar datos PDO Principal Portal  SUSCRIPCION --> 
    static public function principalSuscripcionInsert($mail){
 
        $correo = $mail;

        try{
            $conect = Conexion::conectarPortal();
            $conect->exec("SET CHARACTER SET utf8");
            $sql = "INSERT INTO suscripcion (id_suscripcion,email,fecha_suscripcion) VALUES (null,:miMail,null)"; 
            $resultado = $conect->prepare($sql);
            $resultado->execute(array(":miMail"=>$correo));
            
            $resultado -> closeCursor();
        }catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $conect = null;
        } 

    }   
    
    // Insertar datos PDO Principal Portal CONTACTAR --> 
    static public function PrincipalPortalContactar($n,$e,$c){
 
        $name = $n;
        $email = $e;
        $comments = $c;

        try{
            $conect = Conexion::conectarPortal();
            $conect->exec("SET CHARACTER SET utf8");
            $sql = "INSERT INTO contacto (id_contacto,nombre,email,comentarios,fecha_registro) VALUES (null,:miName,:miMail,:miComments,null)"; 
            $resultado = $conect->prepare($sql);
            $resultado->execute(array(":miName"=>$name,":miMail"=>$email,":miComments"=>$comments));
            
            $resultado -> closeCursor();
        }catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $conect = null;
        } 

    }

        
    
        
}