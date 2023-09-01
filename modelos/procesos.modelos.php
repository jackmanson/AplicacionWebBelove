<?php

require_once "conexion.modelos.php";

class ModeloProcesos{
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
        
        // Insertar datos  --> revisar si borrar

    static public function principalSuscripcion($email){
 
        $stmt = Conexion::conectarPortal()->prepare("INSERT INTO suscripcion VALUES (null,$email)");

        $stmt -> execute(); // esto ejecuta la funcion

        $stmt -> close();
	}
        
    // Insertar datos --> revisar si borrar
    // static public function principalSuscripcionInsert($email){

    //     $query = Conexion::conectarPortalProcedural();
        
    //     $con = mysqli_query($query, "SET NAMES 'utf8'");
    //     $sql = "INSERT INTO suscripcion VALUES (null,$email)";
        
    //     $insert = mysqli_query($con,$sql);
        
    //     if($insert){
    //         echo "<script>alert('Datos enviados correctamente.');</script>";
    //     }else{
    //         echo '<script>alert("Error: $mysqli_error($insert)");</script>';
    //     }

    // }
        
        //ultimatecourses.com  -> rxJS    
        
        
}