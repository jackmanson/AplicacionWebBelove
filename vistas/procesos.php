<!DOCTYPE html>
<html lang="es">
<head>
  <?php
      require_once "controladores/controlador.head.php";
      $miHead = new ControladorHead();
      $miHead -> HeadModelos();
  ?>
	<!-- Awesome -->
	<link rel="stylesheet" href="vistas/font-awesome-4.7.0/css/font-awesome.min.css">

	<!-- estilos CSS -->
	<link rel="stylesheet" type="text/css" href="vistas//css/procesos.css"/>                                                           
	
</head>
<body>
	
	<section id="containerFull">
		
	<!-- SECCION PRINCIPAL LISTAS -->
		<section class="containerLista">

			<!-- LISTA DE CONTENIDO  -->
			<section>
				<!-- LOGOTIPO DE LA EMPRESA -->
				<header>
					<img src="vistas/img/logo_belove.webp" alt="Logo Belove" class="containerLista_logo">
				</header>

				<!-- TITULO DE LAS LISTAS -->
				<h1 class="containerLista_title">{{ title_lista }}</h1>

				<!-- LISTA DE CITAS -->
				<section class="containerLista_registros" v-if="Citas == 1">
					<div class="containerLista_filaCitas">
						<p class="containerLista_item containerLista-head">ID</p>
						<p class="containerLista_item containerLista-head">FECHA DE CITA</p>
						<p class="containerLista_item containerLista-head">HORA DE CITA</p>
						<p class="containerLista_item containerLista-head">NOMBRE DE CLIENTE</p>
						<p class="containerLista_item containerLista-head">SERVICIO ELEGIDO</p>
						<p class="containerLista_item containerLista-head">CELULAR DE CLIENTE</p>
						<p class="containerLista_item containerLista-head">PERSONAL QUE ATIENDE</p>
						<p class="containerLista_item containerLista-head">ESTADO</p>
						<p class="containerLista_item containerLista-head"><i class="fa fa-plus-circle" aria-hidden="true"></i></p>
					</div>
				</section>
				<section class="containerLista_registros" v-if="Citas == 1">
						<?php 
							require_once "controladores/controlador.procesos.php";     
							require_once "modelos/procesos.modelos.php";
					
							$listaCitas = new ControladorProcesos();
							$listaCitas -> controlListaCitas();
						?>
				</section>

				<!-- LISTA DE CLIENTES -->
				<section class="containerLista_registros" v-if="Clientes == 1">
					<div class="containerLista_filaClientes">
						<p class="containerLista_item containerLista-head">ID</p>
						<p class="containerLista_item containerLista-head">NOMBRE</p>
						<p class="containerLista_item containerLista-head">CELULAR</p>
						<p class="containerLista_item containerLista-head">CUMPLEAÑOS</p>
						<p class="containerLista_item containerLista-head">COLABORADOR QUE REGISTRO</p>
						<p class="containerLista_item containerLista-head"><i class="fa fa-plus-circle" aria-hidden="true"></i></p>
					</div>
				</section>
				<section class="containerLista_registros" v-if="Clientes == 1">
						<?php 
							require_once "controladores/controlador.procesos.php";     
							require_once "modelos/procesos.modelos.php";
					
							$listaClientes = new ControladorProcesos();
							$listaClientes -> controlListaClientes();
						?>
				</section>

				<!-- LISTA DE ATENCION AL CLIENTE -->
				<section class="containerLista_registros" v-if="Atencion == 1">
					<div class="containerLista_filaAtencion">
						<p class="containerLista_item">BE000123M</p>
						<p class="containerLista_item-genero"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;Dama</p>
						<p class="containerLista_item">Servicio Cosmético</p>
						<p class="containerLista_item-estado"><i class="fa fa-square" aria-hidden="true"></i>&nbsp;Pendiente</p>
						<p class="containerLista_item">12:00 pm</p>
						<p class="containerLista_item">15/09/2023</p>
						<p class="containerLista_item">1</p>
						<p class="containerLista_item">Pagado</p>
						<p class="containerLista_item"><i class="fa fa-trash" aria-hidden="true"></i></p>
					</div>
				</section>

				<!-- LISTA DE PEDIDOS -->
				<section class="containerLista_registros" v-if="Pedidos == 1">
					<div class="containerLista_filaPedidos">
						<p class="containerLista_item">BE000123M</p>
						<p class="containerLista_item-genero"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;Dama</p>
						<p class="containerLista_item">Servicio Cosmético</p>
						<p class="containerLista_item-estado"><i class="fa fa-square" aria-hidden="true"></i>&nbsp;Pendiente</p>
						<p class="containerLista_item">12:00 pm</p>
						<p class="containerLista_item">15/09/2023</p>
						<p class="containerLista_item">1</p>
						<p class="containerLista_item">Pagado</p>
						<p class="containerLista_item"><i class="fa fa-trash" aria-hidden="true"></i></p>
					</div>
				</section>

				<!-- LISTA DE PROMOCIONES -->
				<section class="containerLista_registros" v-if="Promociones == 1">
					<div class="containerLista_filaPromociones">
						<p class="containerLista_item">BE000123M</p>
						<p class="containerLista_item-genero"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;Dama</p>
						<p class="containerLista_item">Servicio Cosmético</p>
						<p class="containerLista_item-estado"><i class="fa fa-square" aria-hidden="true"></i>&nbsp;Pendiente</p>
						<p class="containerLista_item">12:00 pm</p>
						<p class="containerLista_item">15/09/2023</p>
						<p class="containerLista_item">1</p>
						<p class="containerLista_item">Pagado</p>
						<p class="containerLista_item"><i class="fa fa-trash" aria-hidden="true"></i></p>
					</div>
				</section>

				<!-- LISTA DE DESCUENTOS -->
				<section class="containerLista_registros" v-if="Descuentos == 1">
					<div class="containerLista_filaDescuentos">
						<p class="containerLista_item">BE000123M</p>
						<p class="containerLista_item-genero"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;Dama</p>
						<p class="containerLista_item">Servicio Cosmético</p>
						<p class="containerLista_item-estado"><i class="fa fa-square" aria-hidden="true"></i>&nbsp;Pendiente</p>
						<p class="containerLista_item">12:00 pm</p>
						<p class="containerLista_item">15/09/2023</p>
						<p class="containerLista_item">1</p>
						<p class="containerLista_item">Pagado</p>
						<p class="containerLista_item"><i class="fa fa-trash" aria-hidden="true"></i></p>
					</div>
				</section>

				<!-- LISTA DE CATALOGO -->
				<section class="containerLista_registros" v-if="Catalogo == 1">
					<div class="containerLista_filaCatalogo">
						<p class="containerLista_item">BE000123M</p>
						<p class="containerLista_item-genero"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;Dama</p>
						<p class="containerLista_item">Servicio Cosmético</p>
						<p class="containerLista_item-estado"><i class="fa fa-square" aria-hidden="true"></i>&nbsp;Pendiente</p>
						<p class="containerLista_item">12:00 pm</p>
						<p class="containerLista_item">15/09/2023</p>
						<p class="containerLista_item">1</p>
						<p class="containerLista_item">Pagado</p>
						<p class="containerLista_item"><i class="fa fa-trash" aria-hidden="true"></i></p>
					</div>
				</section>

				<!-- LISTA DE PRODUCTOS -->
				<section class="containerLista_registros" v-if="Productos == 1">
					<div class="containerLista_filaProductos">
						<p class="containerLista_item">BE000123M</p>
						<p class="containerLista_item-genero"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;Dama</p>
						<p class="containerLista_item">Servicio Cosmético</p>
						<p class="containerLista_item-estado"><i class="fa fa-square" aria-hidden="true"></i>&nbsp;Pendiente</p>
						<p class="containerLista_item">12:00 pm</p>
						<p class="containerLista_item">15/09/2023</p>
						<p class="containerLista_item">1</p>
						<p class="containerLista_item">Pagado</p>
						<p class="containerLista_item"><i class="fa fa-trash" aria-hidden="true"></i></p>
					</div>
				</section>
				
				<!-- LISTA DE SERVICIOS -->
				<section class="containerLista_registros" v-if="Servicios == 1">
					<div class="containerLista_filaServicios">
						<p class="containerLista_item containerLista-head">ID</p>
						<p class="containerLista_item containerLista-head">NOMBRE DE SERVICIO</p>
						<p class="containerLista_item containerLista-head">PRECIO BASE (S/.)</p>
						<p class="containerLista_item containerLista-head">QUE USUARIO REGISTRO EL SERVICIO</p>
						<p class="containerLista_item containerLista-head"><i class="fa fa-plus-circle" aria-hidden="true"></i></p>
					</div>
				</section>
				<section class="containerLista_registros" v-if="Servicios == 1">
						<?php
							require_once "controladores/controlador.procesos.php";     
							require_once "modelos/procesos.modelos.php";

							$listaEmpleados = new ControladorProcesos();
							$listaEmpleados -> controlListaServicios();
						?>
				</section>

				<!-- LISTA DE EMPLEADOS -->
				<section class="containerLista_registros" v-if="Empleados == 1">
					<div class="containerLista_filaEmpleados">
						<p class="containerLista_item containerLista-head">ID</p>
						<p class="containerLista_item containerLista-head">NOMBRE</p>
						<p class="containerLista_item containerLista-head">EMAIL</p>
						<p class="containerLista_item containerLista-head">CARGO</p>
						<p class="containerLista_item containerLista-head"><i class="fa fa-plus-circle" aria-hidden="true"></i></p>
					</div>
				</section>
				<section class="containerLista_registros" v-if="Empleados == 1">
						<?php 
							require_once "controladores/controlador.procesos.php";     
							require_once "modelos/procesos.modelos.php";
					
							$listaEmpleados = new ControladorProcesos();
							$listaEmpleados -> controlListaEmpleados();
						?>
				</section>

				<!-- BOTON DE CREAR CITA -->
				<button class="containerLista_buttonAG" type="submit">AGREGAR CLIENTE</button>
			</section>

			<!-- SECTION DE FOTTER -->
			<footer>
				<div class="containerLista_datos">
					<i class="fa fa-whatsapp" aria-hidden="true"></i>&nbsp;969 011 957<br/>
					<i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Av. Tusílagos S.J.L.
				</div>
				<div class="containerLista_info">
					<article class="containerLista_politicas">
						<h4>Nuestras Políticas</h4>
						<p>Políticas de Privacidad</p>
						<p>Políticas de Servicio</p>
						<p>Políticas de Envío</p>
						<p>Políticas de Reembolso</p>
					</article>
					<article class="containerLista_contacto">
						<h4>Contacto</h4>
						<p>Atención al cliente: +(51) 969 011 957</p>
						<p>Email: belovesjl@montalvoperu.com</p>
					</article>
				</div>
			</footer>
		</section>
		
		<!-- BARRA DE ICONOS -->
		<section class="containerIconos">
			<div>
				<i class="fa fa-bars" aria-hidden="true"></i>
				<i class="fa fa-times" aria-hidden="true"></i>
			</div>
			<div>
				<i class="fa fa-heart" aria-hidden="true"></i>
				<i class="fa fa-facebook-official" aria-hidden="true"></i>
				<i class="fa fa-whatsapp" aria-hidden="true"></i>
				<i class="fa fa-envelope-o" aria-hidden="true"></i>
			</div>
		</section>

		<!-- MENU -->
		<header class="containerMenu">
			<nav class="containerMenu_nav">
				<img src="vistas/img/logo_belove_2.webp" alt="Logo Belove 2" class="containerMenu_logo2">
				
				<img src="vistas/img/userEjemplo.png" alt="usuario_sesion" class="containerMenu_imageUser">
				<p class="containerMenu_nomUser">Juliana Angers</p>
			
				<ul>
					<li v-on:click="listaCitas">Citas</li>
					<li v-on:click="listaClientes">Clientes</li>
					<li v-on:click="listaAtencion">Lista de Atención</li>
					<li v-on:click="listaPedidos">Pedidos</li>
					<li v-on:click="listaPromocines">Promociones</li>
					<li v-on:click="listaDescuentos">Descuentos</li>
					<li v-on:click="listaCatalogo">Catalógo</li>
					<li v-on:click="listaProductos">Productos</li>
					<li v-on:click="listaServicios">Servicios</li>
					<li v-on:click="listaEmpleados">Empleados</li>
				</ul>
			</nav>
			<button class="containerMenu_buttonSession">Cerrar Sesión</button>
		</header>


	</section>




	<!-- LIBRERIAS DE CDN VUE JS -->
	<script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>

  	<!-- Js Login -->
  	<script type='text/javascript' src="vistas/js/procesos.js"></script>  

</body>
</html>




