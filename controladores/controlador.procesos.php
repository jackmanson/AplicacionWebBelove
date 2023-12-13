<?php

class ControladorProcesos{
    
    // LLAMA A LA PLANTILLA DE PROCESOS
    public function procesos(){
        
        include "vistas/procesos.php";
        
    }

    //LISTA DE CLIENTES
    public function controlListaClientes(){
        $controlClientes = new ModeloProcesos();
        $controlClientes->modeloListaClientes();
    }

    //LISTA DE CLIENTES
    public function controlListaCitas(){
        $controlCitas = new ModeloProcesos();
        $controlCitas->modeloListaCitas();
    }

    //LISTA DE EMPLEADOS
    public function controlListaEmpleados(){
        $controlEmpleados = new ModeloProcesos();
        $controlEmpleados->modeloListaEmpleados();
    }

    //LISTA DE SERVICIOS
    public function controlListaServicios(){
        $controlServicios = new ModeloProcesos();
        $controlServicios->modeloListaServicios();
    }

}



