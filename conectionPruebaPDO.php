<?php

class Conexion{

    // PARA CONECCIONES DE PHP --> MySQLi PDO
    public function conectarPDO(){

        try{
            // Create connection
            $con = new PDO('mysql:host=localhost;dbname=db_monely_portal','root','');
            $con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            echo 'Conecion ok conection.'."<br/>";
            return $con;
        }catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $con = null;
        }
    }
}   
// $conect = new Conexion();
// $conect->conectarPDO();

class ModeloPrincipalConsulta{

    public function principalSuscripcionConsulta(){
    
        try{
            $conect = Conexion::conectarPDO();
            $conect->exec("SET CHARACTER SET utf8");
            $sql = "SELECT * FROM suscripcion";
            $resultado = $conect->prepare($sql);
            $resultado->execute();
            echo 'Conecion ok modelo consulta.'."<br/>";
            while($registro=$resultado->fetch(PDO::FETCH_ASSOC)){
                echo "Id_suscripcion: ".$registro['id_suscripcion']." - Email: ".$registro['email']."<br/>";
            }
            // return $resultado -> fetch();
            $resultado -> closeCursor();
        }catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $conect = null;
        } 
    
    }

}
// $conect = new ModeloPrincipalConsulta();
// $conect->principalSuscripcionConsulta();

class ModeloPrincipalInsert{

    public function principalSuscripcionInsert($mail){
        
        $correo = $mail; 

        try{
            $conect = Conexion::conectarPDO();
            $conect->exec("SET CHARACTER SET utf8");
            $sql = "INSERT INTO suscripcion (id_suscripcion,email,fecha_suscripcion) VALUES (null,:miMail,null)"; 
            $resultado = $conect->prepare($sql);
            $resultado->execute(array(":miMail"=>$correo));
            echo 'Conecion ok modelo Insert.';
            // return $resultado -> fetch();
            $resultado -> closeCursor();
        }catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $conect = null;
        } 
    
    }
}
$correo = 'jackmanson@tienda.com';
$conectar = new ModeloPrincipalInsert();
$conectar->principalSuscripcionInsert($correo);

