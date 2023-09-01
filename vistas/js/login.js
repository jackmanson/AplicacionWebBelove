// VALIDANDO LOGIN 

function loginvalidandoLogin(){
    
    // validando email
    var email = $("#email").val();
    alert(email);
    if(email != ""){
        var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
        
        if(!expresion.test(email)){
            swall("Ingresar contraseña correcta","La contraseña solo puede tener mayúsculas, minúsculas y números.");
            Return false;
        }
        
    }else{
        swall ("Ingresar su email","La caja no puede estar vacía.");
        return false;
    }
}


