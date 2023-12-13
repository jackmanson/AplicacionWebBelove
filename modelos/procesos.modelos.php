<?php

require_once "conexion.modelos.php";

class ModeloProcesos{
        
            // LISTAR LA TABLA DE CLIENTES
            public function modeloListaClientes(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "SELECT id_usuario,nombre,celular,cumpleanos,nombreColaborador FROM CLIENTES"; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "<div class='containerLista_filaClientes'>";
                        echo "        <p class='containerLista_item'>".$fila['id_usuario']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['nombre']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['celular']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['cumpleanos']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['nombreColaborador']."</p>";
                        echo "        <p class='containerLista_item'><i class='fa fa-trash' aria-hidden='true'></i></p>";
                        echo "</div>";
                        
                    }
        
                }
                catch(Exception $e){
                    die('Error: '.$e->GetMessage());
                }finally{
                    $con = null;
                }  
                mysqli_close($conecta->conectarProcedural());
                 
            }

            // LISTAR LA TABLA DE CLIENTES
            public function modeloListaCitas(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "SELECT id_cita,fecha_cita,hora_cita,nombre,servicio_elegido,celular,personal_atiende,estado FROM CITAS"; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "<div class='containerLista_filaCitas'>";
                        echo "        <p class='containerLista_item-citas'>".$fila['id_cita']."</p>";
                        echo "        <p class='containerLista_item-citas'>".$fila['fecha_cita']."</p>";
                        echo "        <p class='containerLista_item-citas'>".$fila['hora_cita']."</p>";
                        echo "        <p class='containerLista_item-citas'>".$fila['nombre']."</p>";
                        echo "        <p class='containerLista_item-citas'>".$fila['servicio_elegido']."</p>";
                        echo "        <p class='containerLista_item-citas'>".$fila['celular']."</p>";
                        echo "        <p class='containerLista_item-citas'>".$fila['personal_atiende']."</p>";
                        echo "        <p class='containerLista_item-citas'><i class='fa fa-square' aria-hidden='true'></i>&nbsp;".$fila['estado']."</p>";
                        echo "        <p class='containerLista_item'><i class='fa fa-trash' aria-hidden='true'></i></p>";
                        echo "</div>";
                        
                    }
        
                }
                catch(Exception $e){
                    die('Error: '.$e->GetMessage());
                }finally{
                    $con = null;
                }  
                mysqli_close($conecta->conectarProcedural());
                 
            }
            
            // LISTAR LA TABLA DE EMPLEADOS
            public function modeloListaEmpleados(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "SELECT id_empleado,nombre,email,cargo FROM EMPLEADOS"; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "
                                <div class='containerLista_filaEmpleados'>
                                        <p class='containerLista_item'>".$fila['id_empleado']."</p>
                                        <p class='containerLista_item'>".$fila['nombre']."</p>
                                        <p class='containerLista_item'>".$fila['email']."</p>
                                        <p class='containerLista_item'>".$fila['cargo']."</p>
                                        <p class='containerLista_item'><i class='fa fa-trash' aria-hidden='true'></i></p>
                                </div>
                        ";
                    }
        
                }
                catch(Exception $e){
                    die('Error: '.$e->GetMessage());
                }finally{
                    $con = null;
                }  
                mysqli_close($conecta->conectarProcedural());
                 
            }

            // LISTAR LA TABLA DE SERVICIOS
            public function modeloListaServicios(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "SELECT id_servicio,nombre_servicio,precio_base,usuario_registra FROM SERVICIOS"; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "
                            <div class='containerLista_filaServicios'>
                                <p class='containerLista_item'>".$fila['id_servicio']."</p>
                                <p class='containerLista_item'>".$fila['nombre_servicio']."</p>
                                <p class='containerLista_item'>".$fila['precio_base']."</p>
                                <p class='containerLista_item'>".$fila['usuario_registra']."</p>
                                <p class='containerLista_item'><i class='fa fa-trash' aria-hidden='true'></i></p>
                            </div>
                        ";
                    }
        
                }
                catch(Exception $e){
                    die('Error: '.$e->GetMessage());
                }finally{
                    $con = null;
                }  
                mysqli_close($conecta->conectarProcedural());
                 
            }
        
        


}