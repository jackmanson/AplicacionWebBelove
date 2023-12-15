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
	<link rel="stylesheet" type="text/css" href="vistas/css/procesos.busqueda.css"/>          
	
	<!-- LIBRERIAS DE CDN VUE JS -->
	<script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
	
</head>
<body>
	
	<section id="containerFull">
		
	<!-- SECCION PRINCIPAL LISTAS -->
		<section class="containerLista">

			<!-- LISTA DE CONTENIDO  -->
			<section>
				<!-- LOGOTIPO DE LA EMPRESA -->
				<header>
					<a href="gestion.php"><img src="vistas/img/logo_belove.webp" alt="Logo Belove" class="containerLista_logo"></a>
				</header>
				
<?php 
	// $var = $_POST['buscarClientes'];
	// 	echo var_dump(empty($var));
	// 	echo var_dump(empty($var));
?>
				<!-- RESULTADO DE BUSQUEDA CITAS -->
				<?php
				if(isset($_POST['buscarCitas'])){
					echo 	"<section class='containerLista_tituloBuscar'>";
					echo 	"	<h1 class='containerLista_title'>Buscando Citas</h1>";
					echo 	"	<form class='containerLista_buscar' method='POST' action='gestion.php'>";
					echo 	"		<input class='containerLista_inputBuscar' type='search' name='buscarCitas' placeholder='Buscar Citas'/>";
					echo 	"	</form>";
					echo 	"</section>";
					
					
					echo 	"<section class='containerLista_registros'>";
					echo 	"<div class='containerLista_filaCitas'>";
					echo 	"	<p class='containerLista_item containerLista-head'>ID</p>";
					echo 	"	<p class='containerLista_item containerLista-head'>FECHA DE CITA</p>";
					echo 	"	<p class='containerLista_item containerLista-head'>HORA DE CITA</p>";
					echo 	"	<p class='containerLista_item containerLista-head'>NOMBRE DE CLIENTE</p>";
					echo 	"	<p class='containerLista_item containerLista-head'>SERVICIO ELEGIDO</p>";
					echo 	"	<p class='containerLista_item containerLista-head'>CELULAR DE CLIENTE</p>";
					echo 	"	<p class='containerLista_item containerLista-head'>PERSONAL QUE ATIENDE</p>";
					echo 	"	<p class='containerLista_item containerLista-head'>ESTADO</p>";
					echo 	"	<p class='containerLista_item containerLista-head'><i class='fa fa-plus-circle' aria-hidden='true'></i></p>";
					echo 	"</div>";
					echo 	"</section>";
					echo 	"<section class='containerLista_registros'>";
							
					 				$buscar = $_POST['buscarCitas'];
					 			
					 				require_once "controladores/controlador.procesos.php";     
					 				require_once "modelos/procesos.modelos.php";
					 				$buscarCitas = new ControladorProcesos();
					 				$buscarCitas -> controlBuscarCitas($buscar);

					echo	"</section>";
					unset($_POST['buscarCitas']);
					// unset($buscar);
					// unset($buscarCitas);
				}
				?>
				

				<!-- RESULTADO DE BUSQUEDA CLIENTES -->
				<?php
				if(isset($_POST['buscarClientes'])){
					echo 	"<section class='containerLista_tituloBuscar'>";
					echo 	"	<h1 class='containerLista_title'>Buscando Clientes</h1>";
					echo 	"	<form class='containerLista_buscar' method='POST' action='gestion.php'>";
					echo 	"		<input class='containerLista_inputBuscar' type='search' name='buscarClientes' placeholder='Buscar Clientes'>";
					echo 	"	</form>";
					echo 	"</section>";
					
					
					echo 	"<section class='containerLista_registros'>";
					echo 	"	<div class='containerLista_filaClientes'>";
					echo 	"		<p class='containerLista_item containerLista-head'>ID</p>";
					echo 	"		<p class='containerLista_item containerLista-head'>NOMBRE</p>";
					echo 	"		<p class='containerLista_item containerLista-head'>CELULAR</p>";
					echo 	"		<p class='containerLista_item containerLista-head'>CUMPLEAÑOS</p>";
					echo 	"		<p class='containerLista_item containerLista-head'>COLABORADOR QUE REGISTRO</p>";
					echo 	"		<p class='containerLista_item containerLista-head'><i class='fa fa-plus-circle' aria-hidden='true'></i></p>";
					echo 	"	</div>";
					echo 	"</section>";
					echo 	"<section class='containerLista_registros'>";
							
					 				$buscar = $_POST['buscarClientes'];
					 			
					 				require_once "controladores/controlador.procesos.php";     
					 				require_once "modelos/procesos.modelos.php";
					 				$buscarClientes = new ControladorProcesos();
					 				$buscarClientes -> controlBuscarClientes($buscar);

					echo	"</section>";
					unset($_POST['buscarClientes']);
					// unset($buscar);
					// unset($buscarClientes);
				}
				?>

				
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
		

	</section>






  	<!-- Js CONTROLADOR PROCESOS -->
  	<!-- <script type='text/javascript' src="vistas/js/controlador.procesos.js"></script>   -->

</body>
</html>




