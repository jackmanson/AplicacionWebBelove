<?php
    if(isset($_POST["enviar"])){

        $email = $_POST["email"];
        $clave = $_POST["pwd"];

        require_once "../../modelos/login.modelos.php";
        require_once "../../controladores/controlador.login.php";     

        $controlLogin = new ControladorLogin();
        $controlLogin -> controlLogin($email,$clave);
        
        // if($email==="jassonpolo@gmail.com" && $clave==="1234"){
        //   echo "<script>alert('Credenciales correctas')</script>";
        // }else{
        //   echo "<script>alert('Credenciales incorrectas')</script>";
        // }

        echo "<script>alert('Datos validos - validaLogin.php $email - $clave')</script>";

      }else{

        echo "<script>alert('Datos incorrectos  - validaLogin.php $email - $clave')</script>";

        header("location: ../../index.php");

      }


      var_dump($email);
      var_dump($clave);
  
  




?>