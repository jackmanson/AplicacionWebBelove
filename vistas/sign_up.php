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

        $no1 = 'Juan';
        $no2 = 'Pedro';
        $res = strcasecmp($no1,$no2);

        if($res){
            echo 'No son iguales';
        }else{
            echo 'Son iguales';
        }
        
    ?>





    <!-- Using Vue from CDN -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="vistas/js/sign_up.js"></script>


</body>
</html>