<?php

require_once "conexion.modelos.php";

class ModeloProcesos{
        
            // LISTAR LA TABLA DE CITAS
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

            
            // BUSCAR EN TABLA DE CITAS 
            public function modeloBuscarCitas($buscar){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "SELECT id_cita,fecha_cita,hora_cita,nombre,servicio_elegido,celular,personal_atiende,estado FROM CITAS WHERE nombre LIKE '%$buscar%'"; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "<div class='containerLista_filaCitas'>";
                        echo "        <p class='containerLista_item'>".$fila['id_cita']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['fecha_cita']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['hora_cita']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['nombre']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['servicio_elegido']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['celular']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['personal_atiende']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['estado']."</p>";
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

            // LISTAR LA TABLA DE PRODUCTOS
            public function modeloListaProductos(){

                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();

                    $consulta = "
                        select productos.idProducto,productos.NombreProducto,productos.CantidadStock,productos.PrecioProducto,concat(personas.NombrePersona,' ',personas.ApellidoPaterno,' ',personas.ApellidoMaterno) AS nomb,productos.FechaRegistra,estados.NombreEstado
                        from productos
                        inner join usuarios on productos.idUsuarioRegistra=usuarios.idUsuario
                        inner join empleados on empleados.idEmpleados=usuarios.idEmpleado
                        inner join personas on personas.idPersona=empleados.idPersona
                        inner join estados on estados.idEstado=productos.idEstadoProducto
                    "; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "<div class='containerLista_filaProductos'>";
                        echo "        <p class='containerLista_item'>".$fila['idProducto']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['NombreProducto']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['CantidadStock']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['PrecioProducto']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['NombreEstado']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['nomb']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['FechaRegistra']."</p>";
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

            
            // BUSCAR EN TABLA DE PRODUCTOS 
            public function modeloBuscarProductos($buscar){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "
                    select productos.idProducto,productos.NombreProducto,productos.CantidadStock,productos.PrecioProducto,concat(personas.NombrePersona,' ',personas.ApellidoPaterno,' ',personas.ApellidoMaterno) AS nomb,productos.FechaRegistra,estados.NombreEstado
                    from productos
                    inner join usuarios on productos.idUsuarioRegistra=usuarios.idUsuario
                    inner join empleados on empleados.idEmpleados=usuarios.idEmpleado
                    inner join personas on personas.idPersona=empleados.idPersona
                    inner join estados on estados.idEstado=productos.idEstadoProducto
                    WHERE productos.NombreProducto LIKE '%$buscar%'
                    "; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "<div class='containerLista_filaProductos'>";
                        echo "        <p class='containerLista_item'>".$fila['idProducto']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['NombreProducto']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['CantidadStock']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['PrecioProducto']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['NombreEstado']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['nomb']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['FechaRegistra']."</p>";
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
            public function modeloListaClientes(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    // $consulta = "SELECT id_usuario,nombre,celular,cumpleanos,nombreColaborador FROM CLIENTES"; 
                    $consulta = "
                        select clientes.idClientes,personas.NombrePersona,personas.ApellidoPaterno,personas.ApellidoMaterno,clientes.Celular,personas.FechaNacimiento,concat(NomEmpleadoRegistra.NombrePersona,', ',NomEmpleadoRegistra.ApellidoPaterno,' ',NomEmpleadoRegistra.ApellidoMaterno)  AS perRegistra
                        from clientes 
                        inner join personas on clientes.idPersona=personas.idPersona
                        inner join usuarios on usuarios.idUsuario=clientes.idUsuarioRegistra
                        inner join empleados on empleados.idEmpleados=usuarios.idEmpleado
                        inner join personas NomEmpleadoRegistra on NomEmpleadoRegistra.idPersona=empleados.idEmpleados
                    "; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "<div class='containerLista_filaClientes'>";
                        echo "        <p class='containerLista_item'>".$fila['idClientes']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['NombrePersona']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['ApellidoPaterno']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['ApellidoMaterno']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['Celular']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['FechaNacimiento']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['perRegistra']."</p>";
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

            // BUSCAR EN TABLA DE CLIENTES
            public function modeloBuscarClientes($buscar){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "
                        select clientes.idClientes,personas.NombrePersona,personas.ApellidoPaterno,personas.ApellidoMaterno,clientes.Celular,personas.FechaNacimiento,concat(NomEmpleadoRegistra.NombrePersona,', ',NomEmpleadoRegistra.ApellidoPaterno)  AS perRegistra
                        from clientes 
                        inner join personas on clientes.idPersona=personas.idPersona
                        inner join usuarios on usuarios.idUsuario=clientes.idUsuarioRegistra
                        inner join empleados on empleados.idEmpleados=usuarios.idEmpleado
                        inner join personas NomEmpleadoRegistra on NomEmpleadoRegistra.idPersona=empleados.idEmpleados
                        WHERE personas.NombrePersona LIKE '%$buscar%' OR personas.ApellidoPaterno LIKE '%$buscar%' OR personas.ApellidoMaterno LIKE '%$buscar%'
                    "; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "<div class='containerLista_filaClientes'>";
                        echo "        <p class='containerLista_item'>".$fila['idClientes']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['NombrePersona']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['ApellidoPaterno']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['ApellidoMaterno']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['Celular']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['FechaNacimiento']."</p>";
                        echo "        <p class='containerLista_item'>".$fila['perRegistra']."</p>";
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
        
                    // $consulta = "SELECT id_empleado,nombre,email,cargo FROM EMPLEADOS"; 
                    $consulta = "
                        select idEmpleados,NombrePersona,ApellidoPaterno,ApellidoMaterno,Email,NombreCargo,NombreEstado from empleados 
                        inner join personas on empleados.idPersona=personas.idPersona
                        inner join cargosempleados on empleados.idCargoEmpleado=cargosempleados.idCargo
                        inner join estados on empleados.idEstado=estados.idEstado
                        ORDER BY idEmpleados
                    "; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "
                                <div class='containerLista_filaEmpleados'>
                                        <p class='containerLista_item'>".$fila['idEmpleados']."</p>
                                        <p class='containerLista_item'>".$fila['NombrePersona']."</p>
                                        <p class='containerLista_item'>".$fila['ApellidoPaterno']."</p>
                                        <p class='containerLista_item'>".$fila['ApellidoMaterno']."</p>
                                        <p class='containerLista_item'>".$fila['Email']."</p>
                                        <p class='containerLista_item'>".$fila['NombreCargo']."</p>
                                        <p class='containerLista_item'>".$fila['NombreEstado']."</p>
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
        
                    $consulta = "
                        select tiposservicios.idTipoServicio,tiposservicios.NombreServicio,tiposservicios.PrecioServicioBase,concat(personas.NombrePersona,' ',personas.ApellidoPaterno,' ',personas.ApellidoMaterno) AS quienRegistra 
                        from tiposservicios
                        inner join usuarios on tiposservicios.idUsuarioRegistra=usuarios.idUsuario
                        inner join empleados on empleados.idEmpleados=usuarios.idEmpleado
                        inner join personas on personas.idPersona=empleados.idPersona
                    "; 
                    $resultado = mysqli_query($con,$consulta);
                    
                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        echo "
                            <div class='containerLista_filaServicios'>
                                <p class='containerLista_item'>".$fila['idTipoServicio']."</p>
                                <p class='containerLista_item'>".$fila['NombreServicio']."</p>
                                <p class='containerLista_item'>S/. ".$fila['PrecioServicioBase']."</p>
                                <p class='containerLista_item'>".$fila['quienRegistra']."</p>
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

            // LISTAR HORARIOS DE ESTILISTAS
            public function modeloListaHorariosEstilista(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "
                        select HorarioEmpleados.idDia,Empleados.idEmpleados,Personas.NombrePersona,CargosEmpleados.NombreCargo,Dias.NombreDia,concat(HorarioEmpleados.HoraIngreso,' - ',HorarioEmpleados.HoraSalida) AS horaTrabajoDia
                        from HorarioEmpleados
                        inner join empleados on HorarioEmpleados.idEmpleado=Empleados.idEmpleados
                        inner join personas on personas.idPersona=empleados.idPersona
                        inner join cargosempleados on cargosempleados.idCargo=empleados.idCargoEmpleado
                        inner join dias on dias.idDia=HorarioEmpleados.idDia
                        "; 
                        // WHERE CargosEmpleados.NombreCargo='Estilista'
                    $resultado = mysqli_query($con,$consulta);
                    
                    $horarioEmple = [];

                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        if($fila['NombreCargo']=='Estilista'){
                            $nombreEmple = $fila['NombrePersona'];

                            if($fila['NombreDia']=='Lunes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Lunes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Lunes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Martes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Martes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Martes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Miércoles'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Miercoles"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Miercoles"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Jueves'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Jueves"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Jueves"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Viernes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Viernes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Viernes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Sábado'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Sabado"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Sabado"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Domingo'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Domingo"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Domingo"] = "Día libre";
                                }
                            }
                        }
                    }
                    // var_dump($horarioEmple);    
                    foreach ($horarioEmple as $clave => $k){
                        echo "
                            <div class='containerLista_filaHorarios'>
                                <p class='containerLista_item'>".$clave."</p>
                        ";
                                foreach($k as $hora){
                                    echo "<p class='containerLista_item'>".$hora."</p>";
                                }    
                        echo "
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

            // LISTAR HORARIOS DE BARBEROS
            public function modeloListaHorariosBarbero(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "
                        select HorarioEmpleados.idDia,Empleados.idEmpleados,Personas.NombrePersona,CargosEmpleados.NombreCargo,Dias.NombreDia,concat(HorarioEmpleados.HoraIngreso,' - ',HorarioEmpleados.HoraSalida) AS horaTrabajoDia
                        from HorarioEmpleados
                        inner join empleados on HorarioEmpleados.idEmpleado=Empleados.idEmpleados
                        inner join personas on personas.idPersona=empleados.idPersona
                        inner join cargosempleados on cargosempleados.idCargo=empleados.idCargoEmpleado
                        inner join dias on dias.idDia=HorarioEmpleados.idDia
                        "; 
                        // WHERE CargosEmpleados.NombreCargo='Barbero'
                    $resultado = mysqli_query($con,$consulta);
                    
                    $horarioEmple = [];

                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        if($fila['NombreCargo']=='Barbero'){
                            $nombreEmple = $fila['NombrePersona'];

                            if($fila['NombreDia']=='Lunes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Lunes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Lunes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Martes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Martes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Martes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Miércoles'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Miercoles"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Miercoles"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Jueves'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Jueves"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Jueves"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Viernes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Viernes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Viernes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Sábado'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Sabado"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Sabado"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Domingo'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Domingo"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Domingo"] = "Día libre";
                                }
                            }
                        }
                    }
                    // var_dump($horarioEmple);    
                    foreach ($horarioEmple as $clave => $k){
                        echo "
                            <div class='containerLista_filaHorarios'>
                                <p class='containerLista_item'>".$clave."</p>
                        ";
                                foreach($k as $hora){
                                    echo "<p class='containerLista_item'>".$hora."</p>";
                                }    
                        echo "
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

            // LISTAR HORARIOS DE MANICURISTA Y COSMEATRAS
            public function modeloListaHorariosManicurista(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "
                        select HorarioEmpleados.idDia,Empleados.idEmpleados,Personas.NombrePersona,CargosEmpleados.NombreCargo,Dias.NombreDia,concat(HorarioEmpleados.HoraIngreso,' - ',HorarioEmpleados.HoraSalida) AS horaTrabajoDia
                        from HorarioEmpleados
                        inner join empleados on HorarioEmpleados.idEmpleado=Empleados.idEmpleados
                        inner join personas on personas.idPersona=empleados.idPersona
                        inner join cargosempleados on cargosempleados.idCargo=empleados.idCargoEmpleado
                        inner join dias on dias.idDia=HorarioEmpleados.idDia
                        "; 
                        // WHERE CargosEmpleados.NombreCargo='Manicurista'
                    $resultado = mysqli_query($con,$consulta);
                    
                    $horarioEmple = [];

                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        if($fila['NombreCargo']=='Manicurista' || $fila['NombreCargo']=='Cosmeatra'){
                            $nombreEmple = $fila['NombrePersona'];

                            if($fila['NombreDia']=='Lunes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Lunes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Lunes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Martes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Martes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Martes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Miércoles'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Miercoles"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Miercoles"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Jueves'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Jueves"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Jueves"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Viernes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Viernes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Viernes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Sábado'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Sabado"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Sabado"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Domingo'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Domingo"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Domingo"] = "Día libre";
                                }
                            }
                        }
                    }
                    // var_dump($horarioEmple);    
                    foreach ($horarioEmple as $clave => $k){
                        echo "
                            <div class='containerLista_filaHorarios'>
                                <p class='containerLista_item'>".$clave."</p>
                        ";
                                foreach($k as $hora){
                                    echo "<p class='containerLista_item'>".$hora."</p>";
                                }    
                        echo "
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

            // LISTAR HORARIOS DE ADMINISTRADOR Y CAJERO
            public function modeloListaHorariosAdminCajero(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "
                        select HorarioEmpleados.idDia,Empleados.idEmpleados,Personas.NombrePersona,CargosEmpleados.NombreCargo,Dias.NombreDia,concat(HorarioEmpleados.HoraIngreso,' - ',HorarioEmpleados.HoraSalida) AS horaTrabajoDia
                        from HorarioEmpleados
                        inner join empleados on HorarioEmpleados.idEmpleado=Empleados.idEmpleados
                        inner join personas on personas.idPersona=empleados.idPersona
                        inner join cargosempleados on cargosempleados.idCargo=empleados.idCargoEmpleado
                        inner join dias on dias.idDia=HorarioEmpleados.idDia
                        "; 
                        // WHERE CargosEmpleados.NombreCargo='Manicurista'
                    $resultado = mysqli_query($con,$consulta);
                    
                    $horarioEmple = [];

                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        if($fila['NombreCargo']=='Administrador' || $fila['NombreCargo']=='Cajero(a)'){
                            $nombreEmple = $fila['NombrePersona'];

                            if($fila['NombreDia']=='Lunes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Lunes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Lunes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Martes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Martes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Martes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Miércoles'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Miercoles"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Miercoles"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Jueves'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Jueves"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Jueves"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Viernes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Viernes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Viernes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Sábado'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Sabado"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Sabado"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Domingo'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Domingo"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Domingo"] = "Día libre";
                                }
                            }
                        }
                    }
                    // var_dump($horarioEmple);    
                    foreach ($horarioEmple as $clave => $k){
                        echo "
                            <div class='containerLista_filaHorarios'>
                                <p class='containerLista_item'>".$clave."</p>
                        ";
                                foreach($k as $hora){
                                    echo "<p class='containerLista_item'>".$hora."</p>";
                                }    
                        echo "
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

            // LISTAR HORARIOS DE MANTENIMIENTO
            public function modeloListaHorariosMantenimiento(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "
                        select HorarioEmpleados.idDia,Empleados.idEmpleados,Personas.NombrePersona,CargosEmpleados.NombreCargo,Dias.NombreDia,concat(HorarioEmpleados.HoraIngreso,' - ',HorarioEmpleados.HoraSalida) AS horaTrabajoDia
                        from HorarioEmpleados
                        inner join empleados on HorarioEmpleados.idEmpleado=Empleados.idEmpleados
                        inner join personas on personas.idPersona=empleados.idPersona
                        inner join cargosempleados on cargosempleados.idCargo=empleados.idCargoEmpleado
                        inner join dias on dias.idDia=HorarioEmpleados.idDia
                        "; 
                        // WHERE CargosEmpleados.NombreCargo='Manicurista'
                    $resultado = mysqli_query($con,$consulta);
                    
                    $horarioEmple = [];

                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        if($fila['NombreCargo']=='Mantenimiento'){
                            $nombreEmple = $fila['NombrePersona'];

                            if($fila['NombreDia']=='Lunes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Lunes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Lunes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Martes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Martes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Martes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Miércoles'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Miercoles"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Miercoles"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Jueves'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Jueves"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Jueves"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Viernes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Viernes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Viernes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Sábado'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Sabado"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Sabado"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Domingo'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Domingo"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Domingo"] = "Día libre";
                                }
                            }
                        }
                    }
                    // var_dump($horarioEmple);    
                    foreach ($horarioEmple as $clave => $k){
                        echo "
                            <div class='containerLista_filaHorarios'>
                                <p class='containerLista_item'>".$clave."</p>
                        ";
                                foreach($k as $hora){
                                    echo "<p class='containerLista_item'>".$hora."</p>";
                                }    
                        echo "
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

            // LISTAR HORARIOS DE LIMPIEZA DE VITRINAS
            public function modeloListaHorariosLimpiezaVitrina(){
        
                try{
                    $conecta = new Conexion();
                    $con = $conecta->conectarProcedural();
        
                    $consulta = "
                        select HorarioEmpleados.idDia,Empleados.idEmpleados,Personas.NombrePersona,CargosEmpleados.NombreCargo,Dias.NombreDia,concat(HorarioEmpleados.HoraIngreso,' - ',HorarioEmpleados.HoraSalida) AS horaTrabajoDia
                        from HorarioEmpleados
                        inner join empleados on HorarioEmpleados.idEmpleado=Empleados.idEmpleados
                        inner join personas on personas.idPersona=empleados.idPersona
                        inner join cargosempleados on cargosempleados.idCargo=empleados.idCargoEmpleado
                        inner join dias on dias.idDia=HorarioEmpleados.idDia

                        select personas.nombrepersonas
                        tareasasignadas
                        "; 
                        // WHERE CargosEmpleados.NombreCargo='Manicurista'
                    $resultado = mysqli_query($con,$consulta);
                    
                    $horarioEmple = [];

                    while($fila=mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
                        
                        if($fila['NombreCargo']=='Mantenimiento'){
                            $nombreEmple = $fila['NombrePersona'];

                            if($fila['NombreDia']=='Lunes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Lunes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Lunes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Martes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Martes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Martes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Miércoles'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Miercoles"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Miercoles"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Jueves'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Jueves"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Jueves"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Viernes'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Viernes"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Viernes"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Sábado'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Sabado"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Sabado"] = "Día libre";
                                }
                            }
                            if($fila['NombreDia']=='Domingo'){
                                if(isset($fila['horaTrabajoDia'])){
                                    $horarioEmple[$nombreEmple]["Domingo"] = $fila['horaTrabajoDia'];
                                }else{
                                    $horarioEmple[$nombreEmple]["Domingo"] = "Día libre";
                                }
                            }
                        }
                    }
                    // var_dump($horarioEmple);    
                    foreach ($horarioEmple as $clave => $k){
                        echo "
                            <div class='containerLista_filaHorarios'>
                                <p class='containerLista_item'>".$clave."</p>
                        ";
                                foreach($k as $hora){
                                    echo "<p class='containerLista_item'>".$hora."</p>";
                                }    
                        echo "
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