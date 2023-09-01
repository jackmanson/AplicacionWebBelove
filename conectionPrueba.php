<?php

class Conexion{

    // PARA CONECCIONES DE PHP --> MySQLi POO
    public function conectarPOO(){
        
        $servername = "localhost";
        $username = "root";
        $password = "";
        $data = "db_monely_portal";

        // Create connection --MySQLi Procedural
        $con = new mysqli($servername,$username,$password,$data);
        
        // Check connection
        if ($con->connect_errno) {
           echo "La conection a la base de datos a fallado desde la clase Coneccion.".$con->connect_errno;
        }/* else{
            echo "Conection se realizo con exito desde la clase Coneccion.";
        } */
        return $con;
    }
    
}

// $con = new Conexion();
// $con->conectarPOO();

class ModeloPrincipal{

    // Insertar datos --> 
    public function principalSuscripcionInsert($mail){
        // TODO: Casilla registro de correo

        $conexion = new Conexion(); 
        $conexion->conectarPOO();
        $conexion->set_charset("utf8");
        $sql = "INSERT INTO suscripcion VALUES (null,$mail,null)";    
        $insertData = $conexion->query($sql);

        if($conexion->errno){    
            die($conexion->error);
        }else{
            echo "Coneccion exitosa";
        }
        return $insertData;
    }
              
    // // Insertar datos --> 
    // static public function PrincipalPortalContactar($correo,$email,$comments){
    //     $query = Conexion::conectarPortalProcedural();
        
    //     mysqli_query($query, "SET NAMES 'utf8'");
    //     $sql = "INSERT INTO contacto VALUES (NULL,$correo,$email,$comments,current_timestamp())";
    //     $insert = mysqli_query($query,$sql);

    //     // return $insert;

    // }
        
}

$emailx = "jacd22ddk@yaa.com";
$conec = new ModeloPrincipal();
$conec->principalSuscripcionInsert($emailx);

// echo $c;
// var_dump($c);

// class ControladorPrincipal{  
    
//     //INSERTAMOS Y REGISTROS DE SUSCRIPTOR POR EL EMAIL --> 2
//     public function ctrPrincipalPortalSuscriptor($email){
//         // TODO: Casilla registro de corrro
//         $suscripcion = new ModeloPrincipal();
//         $suscripcion->principalSuscripcionInsert($email);

//         return $suscripcion;
//     }
        
//     //CONTACTAR Y REGISTROS DE COMENTARIOS
//     public function ctrPrincipalPortalContactar($correo,$email,$comments){
//         // TODO: principal formulario de contacto
//         $contactar = new ModeloPrincipal();
//         $contactar->PrincipalPortalContactar($correo,$email,$comments);
        
//         return $contactar;
//     }
    
// }

// $email = "jasc@lloll.com";
// $prueba = new ControladorPrincipal();
// $prueba->ctrPrincipalPortalSuscriptor($email);