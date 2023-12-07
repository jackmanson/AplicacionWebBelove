<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>v-show</title>

</head>
<body>

    <!-- <main id="app">
        <input type="number" v-model="message">
        <h1 v-if="message==1">El dia esta nublado</h1>
        <h1 v-else-if="message==2">El dia esta muy lluvioso</h1>
    </main> -->

    
    <!-- Controlador absoluto de este elemento     -->
    <div id="myApp">
        <h1>Hola Mundo en Vue</h1>
        <p>Saludos a todos.</p>
        <h4>{{ 1 + 1 }}</h4>
        <h4>{{'Jack' + ' Manxon'}}</h4>
        <h4>{{ message }}</h4>
        <h4>{{ quote }}</h4>
        <blockquote>{{ author }}</blockquote>
        <button  v-on:click="changeQuote">
            Cambiar
        </button>
    </div>





    <!-- Using Vue from CDN -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="vistas/js/sign_up.js"></script>


</body>
</html>