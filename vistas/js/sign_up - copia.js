$('document').ready(function(){
    
    // modal de terminos y condiciones
    $(".classTerminos").click(function(){
        $("#misTerminos").modal();
    });
    
    // LIMPIA ALERTAS
     $("#btnCrearCuenta").click(function(){
        $(".alertNom").hide();
        $(".atenNom").hide();
        $(".alertApePat").hide();
        $(".atenApePat").hide();
        $(".alertApeMat").hide();
        $(".atenApeMat").hide();
        $(".alertTipoDoc").hide();
        $(".atenTipoDoc").hide();
        $(".alertNumoDoc").hide();
        $(".atenNumDoc").hide();
        $(".alertNac").hide();
        $(".atenNac").hide();
        $(".alertCiv").hide();
        $(".atenCiv").hide();
        
        $(".atenTerminos").hide();
    });
    
    var departamento = $("departamento").val();
    
    if(departamento <= 25){
        $.ajax({
            type: 'POST',
            url: '../../ajax/sign_up.ajax.php',
            success: function(){
                
            },
            error: function(){
                alert("A ocurrido un error!");
            }
        });
    }

    
    
});

function inputHidden(){
    return 1;
}

inputHidden();

// VALIDANDO REGISTRO 
    function validandoLogin(){
        
        // VALIDAR NOMBRE
        var nombre = $("#nombres").val();
        if(nombre !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]*$/;
            if(!expresion.test(nombre)){
                $("#nombres").parent().before('<div class="alert alert-danger alertNom" id=""><strong>NOMBRES ERROR:</strong> No se permiten caracteres ni números especiales!</div>');
                return false; 
            }
        }else{
            $("#nombres").parent().before('<div class="alert alert-warning atenNom" id=""><strong>ATENCIÓN:</strong> Campo nombres es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR APELLIDO PATERNO
        var apellidoPaterno = $("#apellidoPaterno").val();
        if(apellidoPaterno !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
            if(!expresion.test(apellidoPaterno)){
                $("#apellidoPaterno").parent().before('<div class="alert alert-danger alertApePat" id=""><strong>APELLIDO PATERNO ERROR:</strong> No se permiten caracteres ni números especiales!</div>');
                return false;
            }
        }else{
            $("#apellidoPaterno").parent().before('<div class="alert alert-warning atenApePat" id=""><strong>ATENCIÓN:</strong> Campo apellido paterno es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR APELLIDO MATERNO
        var apellidoPaterno = $("#apellidoMaterno").val();
        if(apellidoPaterno !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
            if(!expresion.test(apellidoPaterno)){
                $("#apellidoMaterno").parent().before('<div class="alert alert-danger alertApeMat" id=""><strong>APELLIDO MATERNO ERROR:</strong> No se permiten caracteres ni números especiales!</div>');
                return false;
            }
        }else{
            $("#apellidoMaterno").parent().before('<div class="alert alert-warning atenApeMat" id=""><strong>ATENCIÓN:</strong> Campo apellido materno es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR TIPO DE DOCUMENTO
        var tipoDocumento = $("#tipoDocumento").val();
        if(tipoDocumento !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(tipoDocumento)){
                $("#tipoDocumento").parent().before('<div class="alert alert-danger alertTipoDoc" id=""><strong>TIPO DE DOCUMENTO ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#tipoDocumento").parent().before('<div class="alert alert-warning atenTipoDoc" id=""><strong>ATENCIÓN:</strong> Campo tipo documento es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR NUMERO DE DOCUMENTO
        var numeroDocumento = $("#numeroDocumento").val();
        if(numeroDocumento !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(numeroDocumento)){
                $("#numeroDocumento").parent().before('<div class="alert alert-danger alertNumoDoc" id=""><strong>NÚMERO DE DOCUMENTO ERROR:</strong> No se permiten letras ni caracteres especiales en el campo!</div>');
                return false;
            }
        }else{
            $("#numeroDocumento").parent().before('<div class="alert alert-warning atenNumDoc" id=""><strong>ATENCIÓN:</strong> Campo Número del tipo de documento es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR NACIONALIDAD
        var nacionalidad = $("#nacionalidad").val();
        if(nacionalidad !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(nacionalidad)){
                $("#nacionalidad").parent().before('<div class="alert alert-danger alertNac" id=""><strong>NACIONALIDAD ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#nacionalidad").parent().before('<div class="alert alert-warning atenNac" id=""><strong>ATENCIÓN:</strong> Campo nacionalidad es obligatorio!</div>');
            return false;
        }
        
        // ESTADO CIVIL
        var estadoCivil = $("#estadoCivil").val();
        if(estadoCivil !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(estadoCivil)){
                $("#estadoCivil").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>ESTADO CIVIL ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#estadoCivil").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> Campo estado civil es obligatorio!</div>');
            return false;
        }
        
        // TIPO DE TELEFONO
        var tipoTelefono = $("#tipoTelefono").val();
        if(tipoTelefono !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(tipoTelefono)){
                $("#estadoCivil").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>ESTADO CIVIL ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#estadoCivil").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> El Campo es obligatorio!</div>');
            return false;
        }
        
        // NUMERO DE TELEFONO
        var numeroTipoTelefono = $("#numeroTipoTelefono").val();
        if(numeroTipoTelefono !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(numeroTipoTelefono)){
                $("#estadoCivil").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>ESTADO CIVIL ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#estadoCivil").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> El Campo es obligatorio!</div>');
            return false;
        }
        
        // DIRECCION
        var direccion = $("#direccion").val();
        if(direccion !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ0-9.#º ]*$/;
            if(!expresion.test(direccion)){
                $("#direccion").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>DIRECCIÓN ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#direccion").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> Campo dirección es obligatorio!</div>');
            return false;
        }
        
        // DISTRITO
        var distrito = $("#distrito").val();
        if(distrito !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(distrito)){
                $("#distrito").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>DISTRITO ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#distrito").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> Campo distrito es obligatorio!</div>');
            return false;
        }
        
        // PROVINCIA
        var provincia = $("#provincia").val();
        if(provincia !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(provincia)){
                $("#provincia").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>PROVINCIA ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#provincia").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> Campo provincia es obligatorio!</div>');
            return false;
        }
        
        // DEPARTAMENTO
        var departamento = $("#departamento").val();
        if(departamento !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(departamento)){
                $("#departamento").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>DEPARTAMENTO ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#departamento").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> Campo departamento es obligatorio!</div>');
            return false;
        }
        
        // FALTA VALIDAR LA FECHA
        
        // VALIDAR NUMERO DE HIJOS
        var cantHijos = $("#cantHijos").val();
        if(cantHijos !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(cantHijos)){
                $("#cantHijos").parent().before('<div class="alert alert-danger alertApePat" id=""><strong>NÚMERO DE HIJOS ERROR:</strong> No se permiten caracteres ni texto solo números!</div>');
                return false;
            }
        }else{
            $("#cantHijos").parent().before('<div class="alert alert-warning atenApePat" id=""><strong>ATENCIÓN:</strong> Campo número de hijos es obligatorio!</div>');
            return false;
        }
        
        // FALTA VALIDAR LA FOTOGRAFIA
        var fechaNacimiento = $("fechaNacimiento").val();
        console.log(fechaNacimiento);
        
        // VALIDAR NICK
        var nick = $("#nick").val();
        if(nick !== ""){
            var expresion = /^[a-zA-Z0-9-_]*$/;
            if(!expresion.test(nick)){
                $("#nick").parent().before('<div class="alert alert-danger alertNom" id=""><strong>NICK ERROR:</strong> No se permiten caracteres especiales ni números!</div>');
                return false; 
            }
        }else{
            $("#nick").parent().before('<div class="alert alert-warning atenNom" id=""><strong>ATENCIÓN:</strong> Campo nick es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR EMAIL
        var email = $("#email").val();
        if(email !== ""){
            var expresion = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
            if(!expresion.test(email)){
                $("#email").parent().before('<div class="alert alert-danger alertNom" id=""><strong>EMAIL ERROR:</strong> Existe un error en el campo!</div>');
                return false; 
            }
        }else{
            $("#email").parent().before('<div class="alert alert-warning atenNom" id=""><strong>ATENCIÓN:</strong> Campo email es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR PASSWORD
        var pwd = $("#pwd").val();
        if(pwd !== ""){ 
            var expresion = /^[a-zA-Z0-9]*$/;
            if(!expresion.test(pwd)){
                $("#pwd").parent().before('<div class="alert alert-danger alertNom" id=""><strong>PASSWORD ERROR:</strong> No se permiten caracteres especiales!</div>');
                return false; 
            }
        }else{
            $("#pwd").parent().before('<div class="alert alert-warning atenNom" id=""><strong>ATENCIÓN:</strong> Campo password esta vacio!</div>');
            return false;
        }
        
        // VALIDAR RE-PASSWORD 
        var rePwd = $("#rePwd").val();
        if(rePwd !== ""){
            var expresion = /^[a-zA-Z0-9]*$/;
            if(!expresion.test(rePwd)){
                $("#rePwd").parent().before('<div class="alert alert-danger alertNom" id=""><strong>PASSWORD ERROR:</strong> No se permiten caracteres especiales!</div>');
                return false; 
            }else if (pwd !== rePwd) {
                $("#rePwd").parent().before('<div class="alert alert-danger alertNom" id=""><strong>ERROR:</strong> Su contraseña no es igual a la escrita anteriormente!</div>');
                return false; 
            }
        }else{
            $("#rePwd").parent().before('<div class="alert alert-warning atenNom" id=""><strong>ATENCIÓN:</strong> Campo password esta vacio!</div>');
            return false;
        }
        

    
        // VALIDAR TERMINOS Y CONDICIONES 
        var terminos = $("#regTerminos:checked").val();
        if(terminos !== "on" || terminos === "undefined"){
            $("#regCheckLabel").parent().before('<div class="alert alert-warning atenTerminos" id=""><strong>ATENCIÓN:</strong> Debe aceptar nuestras condiciones de uso y políticas de privacidad.</div>');
            return false;
        }else if(terminos === "on"){
            return true;
        }
    }


