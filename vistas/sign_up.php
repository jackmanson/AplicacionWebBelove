<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>


</head>
<body>

    <div id="app">
        <h1>{{ message }}</h1>
        <br/>
        <input type="text" v-model="message"> <!-- DATA BINDING -->
    </div>

    <?php

        // $params = json_encode(['dni' => '12345678']);
        // $curl = curl_init();
        // curl_setopt_array($curl, [
        //     CURLOPT_URL => "https://apiperu.dev/api/ruc",
        //     CURLOPT_RETURNTRANSFER => true,
        //     CURLOPT_CUSTOMREQUEST => "POST",
        //     CURLOPT_SSL_VERIFYPEER => false,
        //     CURLOPT_POSTFIELDS => $params,        
        //     CURLOPT_HTTPHEADER => [
        //         'Accept: application/json',
        //         'Content-Type: application/json',
        //         // 'Authorization: Bearer INGRESAR_TOKEN_AQUI'
        //     ],
        // ]);
        // $response = curl_exec($curl);
        // $err = curl_error($curl);
        // curl_close($curl);
        // if ($err) {
        //     echo "cURL Error #:" . $err;
        // } else {
        //     echo $response;
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
    $channel = curl_init();
    $url = 'https://pokeapi.co/api/v2/pokemon/ditto';
    // $url = 'api_prueba.php';
    curl_setopt($channel,CURLOPT_URL,$url);
    curl_setopt($channel,CURLOPT_RETURNTRANSFER,true);
    $respon = curl_exec($channel);

    if(curl_errno($channel)){
        $error_msg = curl_error($channel);
        echo "Error al conectarse a la API";
    }else{
        curl_close($channel);

        $data_objeto = json_decode($respon,true);
        echo '<h1>'.$data_objeto['name'].'</h1>';


    }




?>






    <!-- Using Vue from CDN -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="vistas/js/sign_up.js"></script>


</body>
</html>