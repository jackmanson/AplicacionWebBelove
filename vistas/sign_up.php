<!DOCTYPE html>
<html lang="es">
<head>
    <?php
        require_once "controladores/controlador.head.php";
        $miHead = new ControladorHead();
        $miHead -> HeadModelos();
    ?>

    <!-- ESTILOS SIGN UP -->
    <link rel="stylesheet" type="text/css" href="vistas/css/sign_up.css"/>

    <!-- Using Vue from CDN -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>

</head>
<body>

    <header class="containerHeader">
        <img src="vistas/img/logo_belove.webp" alt="Logotipo Belove" class="containerHeader_logo">  
    </header>
    
    <img src="vistas/img/background_01.webp" alt="Modelo" class="containerBoxRegistroCliente_modelo">

    <!-- Estructura de RegistroCliente -->
    <section class="containerBoxRegistroClienteFull" id="containerRegistroCliente">

        <div class="boxRegistroCliente" id="containerBoxRegistroCliente">
            
            <h1 class="boxRegistroCliente_title">{{ title }}</h1>

            <form method="post" action="" class="boxRegistroCliente_form">  <!-- onsubmit="return RegistroClientevalidandoRegistroCliente()" -->
                <label for="doc">Tipo de Identificación:</label>
                <select name="doc" id="" class="boxRegistroCliente_form_text">
                    <option value="" selected>Seleccionar</option>
                    <option value="DNI">DNI</option>
                    <option value="RUC">RUC</option>
                    <option value="CARNET EXTRANJERIA">CARNET EXTRANJERIA</option>
                    <option value="PASAPORTE">PASAPORTE</option>
                    <!-- <option value="OTRO">OTRO</option> -->
                </select>    
            
                <label for="nunDoc">Número de Identificación:</label>
                <input type="text" class="boxRegistroCliente_form_text" placeholder="Ingresar número documento" name="nunDoc">
               
                <label for="nombre">Nombres:</label>
                <input type="text" class="boxRegistroCliente_form_text" placeholder="Ingresar sus nombres" name="nombre">
               
                <label for="apellidoPa">Apellido Paterno:</label>
                <input type="text" class="boxRegistroCliente_form_text" placeholder="Ingresar apellido paterno" name="apellidoPa">
               
                <label for="apellidoMa">Apellido Materno:</label>
                <input type="text" class="boxRegistroCliente_form_text" placeholder="Ingresar apellido materno" name="apellidoMa">
               
                <label for="celular">Celular:</label>
                <input type="text" class="boxRegistroCliente_form_text" placeholder="Ingresar sus nombres" name="celular">
               
                <label for="email">Email:</label>
                <input type="email" class="boxRegistroCliente_form_email" placeholder="Correo electrónico" name="email">
               
                <label for="fechaNaci">Fecha de Nacimiento:</label>
                <input type="date" class="boxRegistroCliente_form_email" placeholder="Correo electrónico" name="fechaNaci">
               
                <label for="direccion">Direccion:</label>
                <input type="text" class="boxRegistroCliente_form_email" placeholder="Ingresar dirección" name="direccion">
                
                <label for="ciudad">Ciudad:</label>
                <input type="text" class="boxRegistroCliente_form_email" placeholder="Ingresar dirección" name="ciudad">
                
                <button type="submit" class="boxRegistroCliente_form_button" name="enviar">GUARDAR & CERRAR</button>
            </form>
            
            <br/>
                
            <div class="boxRegistroCliente_re-sesion">
                <a href="#" class="boxRegistroCliente_reRegistroCliente">Recuperar contraseña</a>
                <a href="registro.php" class="boxRegistroCliente_upRegistroCliente">Registrarse</a>
            </div>

        </div>
  </section>





    <!-- DATA BINDING -->
    <!-- <div id="app">
        <h1>{{ message }}</h1>
        <br/>
        <input type="text" v-model="message"> 
    </div> -->

    <?php

        // $params = json_encode(['dni' => '44890202']);
        // $curl = curl_init();
        // curl_setopt_array($curl, [
        //     CURLOPT_URL => "https://apiperu.dev/api/dni",
        //     CURLOPT_RETURNTRANSFER => true,
        //     CURLOPT_CUSTOMREQUEST => "POST",
        //     CURLOPT_SSL_VERIFYPEER => false,
        //     CURLOPT_POSTFIELDS => $params,        
        //     CURLOPT_HTTPHEADER => [
        //         'Accept: application/json',
        //         'Content-Type: application/json',
        //         'Authorization: Bearer 6d463787458e7949f988e988d0e57cf6c65e9b9f591fa8e60627b0b1b822bd77'
        //     ],
        // ]);
        // $response = curl_exec($curl);
        // $err = curl_error($curl);
        // curl_close($curl);
        // if ($err) {
        //     echo "cURL Error #:" . $err;
        // } else {
        //     echo "<h1>".$response."</h1>";
        // }


        // $params = json_encode(['ruc' => '20545397031']);
        // $curl = curl_init();
        // curl_setopt_array($curl, array(
        //     CURLOPT_URL => "https://apiperu.dev/api/ruc",
        //     CURLOPT_RETURNTRANSFER => true,
        //     CURLOPT_CUSTOMREQUEST => "POST",
        //     CURLOPT_SSL_VERIFYPEER => false,
        //     CURLOPT_POSTFIELDS => $params,        
        //     CURLOPT_HTTPHEADER => [
        //         'Accept: application/json',
        //         'Content-Type: application/json',
        //         // 'Authorization: Bearer 6d463787458e7949f988e988d0e57cf6c65e9b9f591fa8e60627b0b1b822bd77'
        //     ],        
        // ));
        // $response = curl_exec($curl);
        // $err = curl_error($curl);
        // curl_close($curl);
        // if ($err) {
        //     echo "Algo Salio Mal CURL Error #:" . $err;
        // } else {
        //     echo "<h1>".$response."</h1>";
        // }
        
    ?>

<?php
    // $channel = curl_init();
    // $url = 'https://pokeapi.co/api/v2/pokemon/ditto';
    // // $url = 'api_prueba.php';
    // curl_setopt($channel,CURLOPT_URL,$url);
    // curl_setopt($channel,CURLOPT_RETURNTRANSFER,true);
    // $respon = curl_exec($channel);

    // if(curl_errno($channel)){
    //     $error_msg = curl_error($channel);
    //     echo "Error al conectarse a la API";
    // }else{
    //     curl_close($channel);

    //     $data_objeto = json_decode($respon,true);
    //     echo '<h1>'.$data_objeto['name'].'</h1>';


    // }




?>




    <!-- Jquery v3.4.1 -->
    <!-- <script type="text/javascript" src="vistas/js/jquery_v3.4.1.js"></script> -->

    <!-- Js Registro Cliente -->
    <script type='text/javascript' src="vistas/js/sign_up.js"></script>  

</body>
</html>