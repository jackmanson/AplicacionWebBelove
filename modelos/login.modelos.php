<?php

   // PARA CONECCIONES DE PHP --> MySQLi Procedural
function conectarProcedural(){
        
       // CONEXION
       $servername = "localhost";
       $username = "root";
       $password = "";
       $data = "db_belove_modelo_1";
       
       // Create connection --MySQLi Procedural
       $con = mysqli_connect($servername,$username,$password,$data);
       
       // Check connection
       if (!$con) {
           die("<h1>Conección Fallida:</h1>" . mysqli_connect_error());
       }
       echo "<h1>Conectado Exitosamente.</h1>";
       

    return $con;
}






// CONECCION A LA BASE DE DATOS DB_MONELY_PORTAL CON PDO (PHP DATA OBJECT)
function conectarPOO(){
    
    try{
        // Create connection
        $con = new PDO('mysql:host=localhost;dbname=db_belove_modelo_1','root','');
        $con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        // echo 'Conecion ok conection.'."<br/>";
        return $con;
    }catch(Exception $e){
        //TODO: Revisar como mejorar con un mensaje cuando se repite un mismo mail
        die('Error: '.$e->GetMessage());
    }finally{
        $con = null;
    }

}














