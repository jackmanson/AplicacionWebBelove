<?php

class Conexion{
    
    // CONECCION A LA BASE DE DATOS DB_MONELY CON PDO (PHP DATA OBJECT)
    public function conectar(){
        
        $link = new PDO("mysql:host=localhost;dbname=db_monely",
                        "root",
                        "",
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                              PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
                        );
        
        return $link;
    }
    
    
    // PARA CONECCIONES DE PHP --> MySQLi Procedural
    public function conectarProcedural(){
        
        $servername = "localhost";
        $username = "root";
        $password = "";
        $data = "db_monely";

        // Create connection --MySQLi Procedural
        $con = mysqli_connect($servername,$username,$password,$data);
        
        // Check connection
        //if (!$con) {
        //    die("<h1>Conección Fallida de conexion.modelos.php:</h1>" . mysqli_connect_error());
        //}

        return $con;
    }
    
    
    
    
    // CONECCION A LA BASE DE DATOS DB_MONELY_PORTAL CON PDO (PHP DATA OBJECT)
    public function conectarPortal(){
        
        try{
            // Create connection
            $con = new PDO('mysql:host=localhost;dbname=db_monely_portal','root','');
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
    
    
  
    
}
