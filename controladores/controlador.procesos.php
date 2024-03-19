<?php

class ControladorProcesos{
    
    // LLAMA A LA PLANTILLA DE PROCESOS
    public function procesos(){
        // include "vistas/procesos.php";
        
        if(
        isset($_POST["buscarClientes"]) || 
        isset($_POST["buscarCitas"]) || 
        isset($_POST["buscarAtencion"]) || 
        isset($_POST["buscarPedidos"]) || 
        isset($_POST["buscarPromociones"]) || 
        isset($_POST["buscarDescuentos"]) || 
        isset($_POST["buscarCatalogo"]) || 
        isset($_POST["buscarProductos"]) || 
        isset($_POST["buscarServicios"]) || 
        isset($_POST["buscarEmpleadosas"])){
            
            if(!empty($_POST["buscarClientes"])){
                include "vistas/procesos.busqueda.php";
                // echo "<script>alert('Escribir correctamente');</script>";
            }
            elseif(!empty($_POST["buscarCitas"])){
                include "vistas/procesos.busqueda.php";
            }
            elseif(!empty($_POST["buscarAtencion"])){
                include "vistas/procesos.busqueda.php";
            }
            elseif(!empty($_POST["buscarPedidos"])){
                include "vistas/procesos.busqueda.php";
            }
            elseif(!empty($_POST["buscarPromociones"])){
                include "vistas/procesos.busqueda.php";
            }
            elseif(!empty($_POST["buscarDescuentos"])){
                include "vistas/procesos.busqueda.php";
            }
            elseif(!empty($_POST["buscarCatalogo"])){
                include "vistas/procesos.busqueda.php";
            }
            elseif(!empty($_POST["buscarServicios"])){
                include "vistas/procesos.busqueda.php";
            }
            elseif(!empty($_POST["buscarProductos"])){
                include "vistas/procesos.busqueda.php";
            }
            elseif(!empty($_POST["buscarEmpleadosas"])){
                include "vistas/procesos.busqueda.php";
            }      
            else{
                include "vistas/procesos.php";
                echo "<script>alert('Escribir correctamente');</script>";
            }
        }else{
            include "vistas/procesos.php";
        }
    }

    //LISTA DE CITAS
    public function controlListaCitas(){
        $controlCitas = new ModeloProcesos();
        $controlCitas->modeloListaCitas();
    }

    //BUSCAR CITAS
    public function controlBuscarCitas($buscarNombre){
        $controlCita = new ModeloProcesos();
        $controlCita->modeloBuscarCitas($buscarNombre);
    }

    //LISTA DE CLIENTES
    public function controlListaClientes(){
        $controlClientes = new ModeloProcesos();
        $controlClientes->modeloListaClientes();
    }

    //BUSCAR CLIENTES
    public function controlBuscarClientes($buscarNombre){
        $controlClientes = new ModeloProcesos();
        $controlClientes->modeloBuscarClientes($buscarNombre);
    }

    //LISTA DE EMPLEADOS
    public function controlListaEmpleados(){
        $controlEmpleados = new ModeloProcesos();
        $controlEmpleados->modeloListaEmpleados();

    }

    //LISTA DE PRODUCTOS
    public function controlListaProductos(){
        $controlProductos = new ModeloProcesos();
        $controlProductos->modeloListaProductos();
    }

    //BUSCAR PRODUCTOS
    public function controlBuscarProductos($buscarProductos){
        $controlProductos = new ModeloProcesos();
        $controlProductos->modeloBuscarProductos($buscarProductos);
    }

    //LISTA DE SERVICIOS
    public function controlListaServicios(){
        $controlServicios = new ModeloProcesos();
        $controlServicios->modeloListaServicios();
    }
    
    //LISTA DE HORARIO ESTILISTAS
    public function controlListaHorariosEstilista(){
        $controlHorariosEstilista = new ModeloProcesos();
        $controlHorariosEstilista->modeloListaHorariosEstilista();
    }

    //LISTA DE HORARIO BARBEROS
    public function controlListaHorariosBarbero(){
        $controlHorariosBarbero = new ModeloProcesos();
        $controlHorariosBarbero->modeloListaHorariosBarbero();
    }

    //LISTA DE HORARIO MANICURISTA
    public function controlListaHorariosManicurista(){
        $controlHorariosManicurista = new ModeloProcesos();
        $controlHorariosManicurista->modeloListaHorariosManicurista();
  }

    //LISTA DE HORARIO ADMINISTRADORA Y CAJERA
    public function controlListaHorariosAdminCajero(){
        $controlHorariosAdminCajero = new ModeloProcesos();
        $controlHorariosAdminCajero->modeloListaHorariosAdminCajero();
  }

    //LISTA DE HORARIO MANTENIMIENTO
    public function controlListaHorariosMantenimiento(){
        $controlHorariosMantenimiento = new ModeloProcesos();
        $controlHorariosMantenimiento->modeloListaHorariosMantenimiento();
  }

    //LISTA DE HORARIO LIMPIEZA DE VITRINAS
    public function controlListaHorariosLimpiezaVitrina(){
        $controlHorariosLimpiezaVitrina = new ModeloProcesos();
        $controlHorariosLimpiezaVitrina->modeloListaHorariosLimpiezaVitrina();
  }

}



