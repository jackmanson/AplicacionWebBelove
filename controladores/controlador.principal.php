<?php


class ControladorPrincipal{
    
    // LLAMAMOS A LA PLANTILLA
    public function principal(){
        
        include "vistas/principal.php";
        
    }
    
    //TRAEMOS LOS ESTILOS DINAMICOS DEL PLANTILLA
    public function ctrEstiloPrincipal(){
        $tabla = "principal";
        
        $respuesta = ModeloPrincipal::modeloEstiloPrinciapal($tabla);
        
        return $respuesta;
    }
    
    
    //INSERTAMOS Y REGISTROS DE SUSCRIPTOR POR EL EMAIL
    public function ctrPrincipalPortalSuscriptor($email){
        // TODO: Casilla registro de corrro
        //TODO: Falta corregir redireccion cuando la base de datos rechaza el intento de registrar un email que ya existe.
        //TODO: falta validar aqui en PHP los campos para mas seguridad
        $suscripcion = new ModeloPrincipal();
        $suscripcion->principalSuscripcionInsert($email);

    }
        

    //CONTACTAR Y REGISTROS DE COMENTARIOS
    public function ctrPrincipalPortalContactar($name,$email,$comments){
        // TODO: principal formulario de contacto
        //TODO: falta validar aqui en PHP los campos para mas seguridad
        $contactar = new ModeloPrincipal();
        $contactar->PrincipalPortalContactar($name,$email,$comments);
        
    }
    
}
