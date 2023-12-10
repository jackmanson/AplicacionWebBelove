<?php

require_once "conexion.modelos.php";

class ModeloLogin{

    // private string $email;
    // private string $pass;

    // // CONSTRUCTOR DECLARACION FORMA LARGA
    // public function __construct($email,$pass)
    // {
    //     $this->email = $email;
    //     $this->pass = $pass;
    // }

    // CONSTRUCTOR DECLARACION CORTA
    // public function __construct(
    //     private string $correo,
    //     private string $clave
    // ){}

    // VALIDACION DE LOGIN
    public function modeloLogin($email,$clave){

        // $e = is_string($email);
        // $c = is_string($clave);
        // echo "<h1>$e</h1><h1>$c</h1>";

        try{
            $conecta = new Conexion();
            $con = $conecta->conectarProcedural();

            $consulta = "SELECT email,pass FROM USUARIO WHERE EMAIL='$email' AND PASS='$clave'"; 
            $resultado = mysqli_query($con,$consulta);
            
            $fila = mysqli_fetch_row($resultado); // almacena en fila una tabla array
            
            // echo $fila[0]." <br/> ".$fila[1];

            if($fila[0]==$email && $fila[1]==$clave){
                header("location: ../../gestion.php");
            }else{
                header("location: ../../index.php");
            }

        }
        catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $con = null;
        }  
        
        mysqli_close($conecta->conectarProcedural());
         
    }

    // VALIDACION DE VARIOS REGISTROS
    public function modeloLoginVariasFilas($email,$clave){

        try{
            $conecta = new Conexion();
            $con = $conecta->conectarProcedural();

            $consulta = "SELECT * FROM USUARIO WHERE EMAIL='$email' AND PASS='$clave'"; 
            $resultado = mysqli_query($con,$consulta);
            
            $nunRegistroFila = 1;
            
            while($nunRegistroFila<=3){
                
                $fila = mysqli_fetch_row($resultado); // almacena en fila una tabla array

                echo $fila[0]." - ";
                echo $fila[1]." - ";
                echo $fila[2]." - ";
                echo $fila[3]." - ";
                echo $fila[4]." - ";
                
                echo "<br/>";

                $nunRegistroFila++;
            }

        }
        catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $con = null;
        }  
        mysqli_close($conecta->conectarProcedural());
         
    }

    // VALIDACION DE VARIOS REGISTROS
    public function modeloLoginVariasFilas2($email,$clave){

        try{
            $conecta = new Conexion();
            $con = $conecta->conectarProcedural();

            $consulta = "SELECT * FROM USUARIO WHERE EMAIL='$email' AND PASS='$clave'"; 
            $resultado = mysqli_query($con,$consulta);
            
            while($fila=mysqli_fetch_row($resultado)){
                
                echo $fila[0]." - ";
                echo $fila[1]." - ";
                echo $fila[2]." - ";
                echo $fila[3]." - ";
                echo $fila[4]." - ";
                
                echo "<br/>";

            }

        }
        catch(Exception $e){
            die('Error: '.$e->GetMessage());
        }finally{
            $con = null;
        }  
        mysqli_close($conecta->conectarProcedural());
         
    }



    
}












