<!DOCTYPE html>
<html lang="es">
<head>
<?php
    require_once "controladores/controlador.head.php";

    $miHead = new ControladorHead();
    $miHead -> head();
?>
        
	<script type="text/javascript" src="vistas/js/procesos.js"></script>
	<link rel="stylesheet" type="text/css" href="vistas/css/procesos.css"/>

	<style type="text/css">
		#usuarioMenu{
			margin: 0;
			position: absolute;
			top: 4em;
			right: 25px;
			z-index: 3000;
		}
		
		/* cursos imagen */
		#imagenUsuario{
			cursor: pointer;
		}

		.list-group-item{
			cursor: pointer;	
		}
		.icono-menu{
			margin-right:  0.5em;
		}

	</style>
		

</head>
<body>
<!-- Estructura de plantilla -->
	<!-- BARRA TOP BLACK -->
	<nav class="navbar navbar-inverse">

            <div class="container-fluid">
                
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">PRODUCCIÓN TEXTIL</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Ordenes</a></li>
                            <li><a href="#">Guías</a></li>
                            <li><a href="#">Reportes</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span></a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-envelope"></span></a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-bell"></span></a></li>
                            <li class="classLogin"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                            <li><a href="#"><span class="nombreUsuario">Jasson Polo</span></a></li>
                            <li><img src="vistas/img/jass.png" class="img-circle" id="imagenUsuario" alt="Cinque Terre"/></li>
                    </ul>

                    <!-- Menu de usuario -->
                    <ul id="usuarioMenu">
                      <li class="ui-state-disabled"><div class="rolUsuario">Administrador:</div></li>
                      <li><div>Perfil</div></li>
                      <li><div>Configuración</div></li>
                      <!--<li><div>Electronics</div>
                        <ul>
                          <li class="ui-state-disabled"><div>Home Entertainment</div></li>
                          <li><div>Car Hifi</div></li>
                          <li><div>Utilities</div></li>
                        </ul>
                      </li>-->
                      <li><div>Cerrar Sesión</div></li>
                    </ul>
                </div>

            </div>
	</nav>
	
	<!-- CUERPO DEL CONTENIDO --> 

	<div class="container-fluid">   
		<div class="row content">

			<!-- BARRA IZQUIERDA --> 
			<div class="col-sm-2 sidenav " id="todoAlto">
				 <!-- BUSCADOR --> 
				<form>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Buscar" id="tags">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form> 
				<br/>

				<!-- MENU -->

				<ul class="list-group">
					<li class="list-group-item"><span class="glyphicon glyphicon-calendar icono-menu"></span>Programación <span class="badge">5</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-list-alt icono-menu"></span>Ordenes<span class="badge">3</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-flag icono-menu"></span>Guías <span class="badge">3</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-edit icono-menu"></span>Diseño <span class="badge">5</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-paperclip icono-menu"></span>Abios <span class="badge">3</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-record icono-menu"></span>Gestión Telas <span class="badge">3</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-scissors icono-menu"></span>Corte <span class="badge">3</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-certificate icono-menu"></span>Estampado <span class="badge">3</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-pushpin icono-menu"></span>Confección <span class="badge">3</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-fullscreen icono-menu"></span>Distribución <span class="badge">3</span></li>
					<li class="list-group-item"><span class="glyphicon glyphicon-stats icono-menu"></span>Gráficos <span class="badge">7</span></li>


				</ul> 
			</div>

			<!-- CONTENIDO --> 
			<div class="col-sm-8 text-left"> 

				<!-- TABLA DE DATOS PENDIENTES-->		
				<div class="">
					<h2>Pendientes <button type="button" class="btn btn-primary btn-sm botonCircular">+</button></h2>
					<p>The table-striped class adds zebra-stripes to a table:</p>            
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Firstname</th>
								<th>Lastname</th>
								<th>Email</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>John</td>
								<td>Doe</td>
								<td>john@example.com</td>
							</tr>
							<tr>
								<td>Mary</td>
								<td>Moe</td>
								<td>mary@example.com</td>
							</tr>
							<tr>
								<td>July</td>
								<td>Dooley</td>
								<td>july@example.com</td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- TABLA DE DATOS FINALIZADOS-->		
				<div class="">
					<h2>Finalizados</h2>
					<p>The .table-striped class adds zebra-stripes to a table:</p>            
					<table class="table table-hover">
						<thead>
						<tr>
							<th>Firstname</th>
							<th>Lastname</th>
							<th>Email</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>John</td>
							<td>Doe</td>
							<td>john@example.com</td>
						</tr>
						<tr>
							<td>Mary</td>
							<td>Moe</td>
							<td>mary@example.com</td>
						</tr>
						<tr>
							<td>July</td>
							<td>Dooley</td>
							<td>july@example.com</td>
						</tr>
						</tbody>
					</table>
				</div>

			</div>

			<!-- BARRA DERECHA -->
			<div class="col-sm-2 sidenav miAside">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
			
		</div>
	</div>

	<!-- BARRA DOWN -->
	<footer class="container-fluid text-center footerBotton">
	<p>Copyright © 2020-2022 Jasson Polo All rights reserved.</p>
	</footer>
	
</body>
</html>