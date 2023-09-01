<!DOCTYPE html>
<html lang="es">
<head>
<?php
    $miHead = new ControladorHead();
    $miHead -> head();
?>
        
        <!-- main CSS --> 
        <link rel="stylesheet" type="text/css" href="vistas/css/sign_up.css"/>
        
        <!-- main JS -->
        <script type="text/javascript" src="vistas/js/sign_up.js"></script>
        
        <style>
            .classTerminos{
            margin-left: 3px;
            color: #336699;
            cursor: pointer;
        }
        </style>

</head>

<body>
    
    <!-- CABEZOTE --> 
    
<?php
    $micabezoteSignUp = new ControladorSign_up();
    $micabezoteSignUp -> cabezoteSignUp();
?>
    
    
    <!-- FORMULARIO DE REGISTRO 1 -->
	
    <div class="container-fluid">
        
        <div class="container">
            
            <div class="formularioRegistro"><br/>
                
                <h1 class="text-center"><strong>Datos Necesarios</strong></h1><br/>
                
                <form method="POST" class="row" onsubmit="validandoLogin()">
                    
                    <div class="col-sm-6 ">
                    
                        <div class="form-group">
                            <div>
                                <label for="nombres">Nombres:</label>
                                <input type="text" name="nombres" class="form-control" id="nombres" placeholder="Ingresar sus nombres"> 
                            </div>

                        </div>
                        
                        <div class="form-group">
                            <div>
                                <label for="apellidoPaterno">Apellido Paterno:</label>
                                <input type="text" name="apellidoPaterno" class="form-control" id="apellidoPaterno" placeholder="Ingresar su apellido paterno">    
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div>
                                <label for="apellidoMaterno">Apellido Materno:</label>
                                <input type="text" name="apellidoMaterno" class="form-control" id="apellidoMaterno" placeholder="Ingresar su apellido materno">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div>
                                <label for="tipoDocumento">Tipo de documento:</label>
                                <select name="tipoDocumento" class="form-control" id="tipoDocumento">
                                    <option value="" selected>Seleccione</option> <!--disabled-->
                                    
                                <?php

                                    $dataTD = ControladorSign_up::ctrRegistroTD();

                                    while($varDato = mysqli_fetch_assoc($dataTD)){
                                        echo '<option value="'.$varDato['id_tipo_documento'].'">'.$varDato['nombre_tipo_documento'].'</option>';
                                    }
                                ?>
                                    
                                </select> 
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="numeroDocumento">Número de docuemnto:</label>
                            <input type="text" name="numeroDocumento" class="form-control" id="numeroDocumento" minlength="8" placeholder="Ingresar el número de documento">
                        </div>
                        
                        <div class="form-group">
                            <label for="nacionalidad">Nacionalidad:</label>
                            <select  name="nacionalidad" class="form-control" id="nacionalidad">
                                <option value="" selected>Seleccione</option> <!--disabled-->
                                <?php

                                    $dataN = ControladorSign_up::ctrRegistroN();

                                    while($varDato = mysqli_fetch_assoc($dataN)){
                                        echo '<option value="'.$varDato['id_pais'].'">'.$varDato['nacionalidad'].'</option>';
                                    }
                                ?>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="estadoCivil">Estado civil:</label>
                            <select name="estadoCivil" class="form-control" id="estadoCivil">
                                <option value="" selected>Seleccione</option> <!--disabled-->
                                <?php

                                    $dataEC = ControladorSign_up::ctrRegistroEC();

                                    while($varDato = mysqli_fetch_assoc($dataEC)){
                                        echo '<option value="'.$varDato['id_estado_civil'].'">'.$varDato['estado'].'</option>';
                                    }
                                ?>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="tipoTelefono">Tipo de Teléfono:</label>
                            <select name="tipoTelefono" class="form-control" id="tipoTelefono">
                                <option value="" selected>Seleccione</option> <!--disabled-->
                                <?php

                                    $dataEC = ControladorSign_up::ctrRegistroTT();

                                    while($varDato = mysqli_fetch_assoc($dataEC)){
                                        echo '<option value="'.$varDato['id_tipo_telefono'].'">'.$varDato['nombre_tipo_telefono'].'</option>';
                                    }
                                ?>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <div>
                                <label for="numeroTipoTelefono">Número de teléfono:</label>
                                <input type="text" name="numeroTipoTelefono" class="form-control" id="numeroTipoTelefono" placeholder="Ingresar número de teléfono">
                            </div>
                        </div>
                        
                    </div>
                    
                    <div class="col-sm-6">
                        
                        <div class="form-group">
                            <label for="departamento">Departamento:</label>
                            <select name="departamento" class="form-control" id="departamento">
                                <option value="" selected>Seleccione</option>
                                <?php

                                    $dataDP = ControladorSign_up::ctrRegistroDP();
                                    
                                    while($varDato = mysqli_fetch_assoc($dataDP)){
                                        echo '<option value="'.$varDato['id_departamento'].'">'.$varDato['nombre_departamento'].'</option>';
                                    }
                                ?>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="provincia">Provincia:</label>
                            <select name="provincia" class="form-control" id="provincia">
                                <option value="" selected>Seleccione</option>
                                <?php

                                    $dataP = ControladorSign_up::ctrRegistroP();

                                    while($varDato = mysqli_fetch_assoc($dataP)){
                                        echo '<option value="'.$varDato['id_provincia'].'">'.$varDato['nombre_provincia'].'</option>';
                                    }
                                ?>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="distrito">Distrito:</label>
                            <select name="distrito" class="form-control" id="distrito">
                                <option value="" selected>Seleccione</option>
                                <?php

                                    $dataD = ControladorSign_up::ctrRegistroD();

                                    while($varDato = mysqli_fetch_assoc($dataD)){
                                        echo '<option value="'.$varDato['id_distrito'].'">'.$varDato['nombre_distrito'].'</option>';
                                    }
                                ?>
                            </select> 
                        </div>

                        <div class="form-group">
                            <label for="direccion">Dirección:</label>
                            <input type="text" name="direccion" class="form-control" id="direccion" placeholder="Ingresar su dirección">
                        </div>
                        
                        <div class="form-group">
                            <label for="fechaNacimiento">Fecha de nacimiento:</label>
                            <input type="date" name="fechaNacimiento" class="form-control" id="fechaNacimiento">
                        </div>
                        
                        <div class="form-group">
                            <label for="cantHijos">Número de hijos:</label>
                            <input type="text" name="cantHijos" class="form-control" id="cantHijos" placeholder="Ingresar cantidad de hijos">
                        </div>
                        
                        <div class="form-group">
                            <label for="fotoUsuario">Subir su Fotografia:</label>
                            <input type="file" name="fotoUsuario" class="form-control" id="fotoUsuario">
                        </div>
                        
                    </div><br/>
                    
                    <h1 class="text-center col-sm-12"><strong>Crear Cuenta de Usuario</strong></h1><br/>
                    
                    <div class="col-sm-6 ">
                    
                        <div class="form-group">
                            <label for="nick">Nick:</label>
                            <input type="text" name="nick" class="form-control" id="nick" placeholder="Ingresar su nick">
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email address:</label>
                            <input type="text" class="form-control" name="email" id="email" placeholder="Ingresar su email">
                        </div>

                    </div>
                    
                    <div class="col-sm-6 ">

                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <input type="password" class="form-control" name="pwd" id="pwd" minlength="8" maxlength="15"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="rePwd">Repetir Password:</label>
                            <input type="password" name="rePwd" class="form-control" id="rePwd" minlength="8" maxlength="15"/>
                        </div>
                        
                        
                    </div>
                    
                    <div class="col-sm-12">
                        <div>
                            <label id="regCheckLabel"><input type="checkbox" name="regTerminos" id="regTerminos" value="acepto"> <b>Acepto los</b></label><span class="classTerminos">Terminos y Condiciones.</span>
                        </div>    
                    </div><br/>
                    
                    <!-- Modal de Terminos y condiciones -->
                    <div class="modal fade" id="misTerminos" role="dialog">
                        <div class="modal-dialog">

                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">Terminos y Condiciones</h4>
                            </div>
                            <div class="modal-body">
                              <?php                                 
                                $terminos = new ControladorSign_up();
                                $terminos->terminosCondiciones();
                              ?>
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                          </div> 
                        </div>
                    </div>   

                    <div class="col-sm-12">
                        <input type="hidden" id="myHiden" name="myHidden" value="inputHidden()"/>
                    </div>
                    
                    <div class="col-sm-12">
                        <button type="submit" id="btnCrearCuenta" class="btn btn-default col-sm-2 col-xs-12">Crear cuenta</button>
                    </div>
                    
                    <br/>
                    
                </form> <br/><br/>

            </div>

        </div>
        
    </div>
    
<?php
    $footer = new ControladorSign_up();
    $footer -> footer();
?>
    
</body>
</html>