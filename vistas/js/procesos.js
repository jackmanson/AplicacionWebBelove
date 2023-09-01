$(document).ready(function(){
    console.log("Hola jquery")

  // SELECTOR DEL MENU DEL LADO IZQUIERDO
  $(".list-group-item").click(function(){
      //$(this).css("background","red");
      $(".list-group-item").removeClass("active");
      $(this).addClass("active");
      console.log("click");
  });

   // SELECTOR DE ASIDE LADO DERECHO
  $(".miAside").hide(); // ocualta la barra derecha
  
  // TAMAÑO DE IMAGEN
  $("#imagenUsuario").height("2em").css("margin","0.8em");

  // MENU DE USUARIO/*
  var usuarioMenu1 = $( "#usuarioMenu" ).menu();
  usuarioMenu1.width("180px").hide();

  $("#imagenUsuario").click(function(){ // ocualta y muestra el MENU DE USUARIO
    usuarioMenu1.toggle("fade"); 
  });

  // clic al body del documento para que se oculte el MENU DE USUARIO
  $(document).click(function(){
    usuarioMenu1.width("180px").hide();    
  });

  // login
  $(".classLogin").hide();



  /* AUTOCOMPLETADO EN EL BUSCADOR */
  var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Kuickic",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });

    // BARRA IZQUIERDA



    // BOTTON CIRCULAR
    $(".botonCircular").css("border-radius","50%");

    

    // TABLA HOVER EN REGISTROS
    /*$("tr").css("background","white"); --> FUNCIONA TAMBIEN CON ESTE PERO CON BOOSTRAP ES MAS SIMPLE YA ESTA INCORPORADO
   
    $("tr").mouseover(function(){
    
      if($("tr").css("background")=="#f9f9f9"){
        $(this).css("background","#ffffff");
      }else {
        $(this).css("background","#f9f9f9");
      }
      
    });

    $("tr").mouseout(function(){

      if($("tr").css("background")=="#ffffff"){
        $(this).css("background","#f9f9f9f");
      }else{
        $(this).css("background","#ffffff");
      }

    });*/

    // FOOTER BOTTON
    $(".footerBotton").css("margin-top","10%");
    
});


