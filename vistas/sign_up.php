<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <style>
        .caja1{
            width: 500px;
        }
        .caja1 > p{
            
        }
    </style>

</head>
<body>

    <main id="app">
        <input type="text" v-model="message">
        <h1 v-if="message==1">El dia esta nublado</h1>
        <h1 v-else-if="message==2">El dia esta muy lluvioso</h1>
        <h1 v-else="message==3">El dia esta muy soleado</h1>
    </main>

    





    <!-- Using Vue from CDN -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="vistas/js/sign_up.js"></script>


</body>
</html>