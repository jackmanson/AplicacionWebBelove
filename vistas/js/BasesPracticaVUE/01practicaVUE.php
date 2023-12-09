<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>v-show</title>

</head>
<body>

    <div id="myApp">
        <h1>{{ titulo }}</h1>
        <h2>{{'Hola Mundo' + ` por `+author}}</h2>
        <p>{{ message }}</p>
        <p>{{ message1 }}</p>
        <h3>{{ quote }}</h3>
        <blockquote>{{ author }}</blockquote>
        <button v-on:click="cambiaTitulo">
            Cambiar Titulo
        </button>
    </div>






    <!-- Using Vue from CDN -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="vistas/js/01practicaVUE.js"></script>

</body>
</html>