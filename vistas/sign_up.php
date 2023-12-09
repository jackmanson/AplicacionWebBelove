<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>v-show</title>

</head>
<body>

    <div id="myApp">
        <h1>{{titulo}} {{ mensaje }}</h1>

        <input
          type="text"
          v-model="mensaje"
          v-on:keypress="addQuotes"
        />

        <ul>
            <li v-for="({quote,author},index) in quotes"> <!-- DIRECTIVA V-FOR -->
                <span>{{ index + 1 }} - {{ quote }}</span>
                <blockquote>- {{ author }}</blockquote>
            </li>
        </ul>
    </div>






    <!-- Using Vue from CDN -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="vistas/js/sign_up.js"></script>

</body>
</html>