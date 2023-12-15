<?php

class Conexion{
    
    public function conectarProcedural(){
        
        $servername = "localhost";
        $username = "root";
        $password = "";
        $data = "db_belove_modelo_1";

        // Create connection --MySQLi Procedural
        $con = mysqli_connect($servername,$username,$password,$data);
        
        // Check connection
        if (!$con) {
            echo "Error: No se pudo conectar a MySQL." . PHP_EOL."<br/>";
            echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL."<br/>";
            echo "error de depuración: " . mysqli_connect_error() . PHP_EOL."<br/>";
            exit;
        }
        
        // echo "Éxito: Se realizó una conexión apropiada a MySQL! La base de datos mi_bd es genial." . PHP_EOL."<br/>";
        // echo "Información del host: " . mysqli_get_host_info($con) . PHP_EOL."<br/>";

        mysqli_set_charset($con,"utf8");

        return $con;
    }

    
    // CONECCION A LA BASE DE DATOS DB_MONELY CON PDO (PHP DATA OBJECT)
    public function conectarPOO(){
        
        try{

            $link = new PDO("mysql:host=localhost;db_belove_modelo_1",
                            "root",
                            "",
                            array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                                  PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
                            );
            
            return $link;

        }catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $link = null;
        }
    }
    
    // PARA CONECCIONES DE PHP --> MySQLi Procedural
    
    // CONECCION A LA BASE DE DATOS DB_MONELY_PORTAL CON PDO (PHP DATA OBJECT)
    public function conectarPortal(){
        
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
    
    
  
    
}
