$(document).ready(function(){
    // Add smooth scrolling to all links in navbar + footer link
    $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
      // Make sure this.hash has a value before overriding default behavior
      if (this.hash !== "") {
        // Prevent default anchor click behavior
        event.preventDefault();
  
        // Store hash
        var hash = this.hash;
  
        // Using jQuery's animate() method to add smooth page scroll
        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
        $('html, body').animate({
          scrollTop: $(hash).offset().top
        }, 900, function(){
     
          // Add hash (#) to URL when done scrolling (default click behavior)
          window.location.hash = hash;
        });
      } // End if
    });
    
    $(window).scroll(function() {
      $(".slideanim").each(function(){
        var pos = $(this).offset().top;
  
        var winTop = $(window).scrollTop();
          if (pos < winTop + 600) {
            $(this).addClass("slide");
          }
      });
    });

    // // REDIRECCION ACCESO
    // $(".classLogin").click(function(){
    //   function redirect(){
    //     window.location.href = "http://localhost/tesisSystemUpn2019/acceso.php";
        
    //   }
    //   redirect();
    // });
    
    // function validandoSuscription(){
    //   alert('hola');
    //   // VALIDAR EMAIL
    //   var email = $("#email").val();
    //   if(email !== ""){
    //       var expresion = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    //       if(!expresion.test(email)){
    //           $("#email").parent().before('<div class="alert alert-warning" role="alert"><strong>EMAIL ERROR:</strong> Existe un error en el campo!</div>');
    //           return false; 
    //       }
    //   }else{
    //       $("#email").parent().before('<div class="alert alert-danger" role="alert"><strong>ATENCIÓN:</strong> Campo email es obligatorio!</div>');
    //       return false;
    //   }
  
    // }
    // console.log('listo');
  });
  