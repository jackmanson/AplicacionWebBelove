<!DOCTYPE html>
<html lang="es">
<head>
  <?php
      require_once "controladores/controlador.head.php";
      $miHead = new ControladorHead();
      $miHead -> HeadModelos();
  ?>
  <link rel="stylesheet" type="text/css" href="vistas/css/login.css"/>                                                           

</head>
<body>

  <header class="containerHeader">
    <img src="vistas/img/logo_belove.webp" alt="Logotipo Belove" class="containerHeader_logo">  
  </header>
  
  <img src="vistas/img/background_01.webp" alt="Modelo" class="containerBoxLogin_modelo">

  <!-- Estructura de login -->
  <section class="containerBoxLoginFull">

    <div class="boxLogin ">
        
      <h1 class="boxLogin_title">Iniciar Sesión</h1>
      
      <form method="post" action="vistas/procesos/validaLogin.php" class="boxLogin_form"> <!-- onsubmit="return loginvalidandoLogin()" -->
          <!-- <div class="form-group"> -->
            <label for="email">Email</label>
            <input type="email" class="boxLogin_form_email" placeholder="Correo electrónico" name="email">
          <!-- </div> -->
          <!-- <div class="form-group"> -->
            <label for="pwd">Contraseña</label>
            <input type="password" class="boxLogin_form_pass" placeholder="Contraseña" name="pwd">
          <!-- </div> -->
          <button type="submit" class="boxLogin_form_button" name="enviar">INICIAR</button>
      </form>
      
      <br/>
        
      <div class="boxLogin_re-sesion">
          <a href="#" class="boxLogin_relogin">Recuperar contraseña</a>
          <a href="registro.php" class="boxLogin_upLogin">Registrarse</a>
      </div>

    </div>
  </section>


  <!-- Jquery v3.4.1 -->
  <!-- <script type="text/javascript" src="vistas/js/jquery_v3.4.1.js"></script> -->

  <!-- Js Login -->
  <script type='text/javascript' src="vistas/js/login.js"></script>  

</body>
</html>