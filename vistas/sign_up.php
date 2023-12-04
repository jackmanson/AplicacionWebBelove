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
        <div class="caja1">
            <h1>{{ message }}</h1>
            <input type="text" v-model="message">
            <p v-bind:align=message>Aute in id dolore nisi veniam occaecat ex in duis. Velit in ullamco sit occaecat Lorem adipisicing excepteur dolor aute ex. Dolore aute adipisicing non eiusmod fugiat labore ea sunt nulla fugiat. Irure eu aliqua nisi incididunt veniam ipsum. Aute in id dolore nisi veniam occaecat ex in duis. Velit in ullamco sit occaecat Lorem adipisicing excepteur dolor aute ex. Dolore aute adipisicing non eiusmod fugiat labore ea sunt nulla fugiat. Irure eu aliqua nisi incididunt veniam ipsum.</p>
        </div>
    </main>

    





    <!-- Using Vue from CDN -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="vistas/js/sign_up.js"></script>


</body>
</html>