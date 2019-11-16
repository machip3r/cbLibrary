<?php
	include_once "../model/functions_bd.php";
	$bd=new functions();
	$master_search=$_GET["master-search"];
	$filter_search=$_GET["filter-search"];
	$rsSearch=$bd->tablaBusqueda($master_search, $filter_search);
	$rsSearch2=$bd->tablaBusqueda($master_search, $filter_search);
	session_start();
	$user=$_SESSION['user'];
	$password=$_SESSION['password'];
	$name=$_SESSION['name'];
	$admin=$_SESSION['admin'];
	if ($admin=="t") {
		$rows=mysqli_num_rows($rsSearch2);
	} else {
		$rows=mysqli_num_rows($rsSearch);
	}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/cosmo.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/dt.css">
	<title>Búsqueda CBLibrary</title>
</head>
<body>
	<center>
		<div id="container">
			<div id="banner-search">
				<nav class="navbar navbar-expand-lg" id="nav-top">
					<h4 id="text-welcome" style="display:none; color:white"><strong><?php echo $name; ?></strong></h4>
				  	<a class="navbar-brand" href="register.php" id="title-nav"><button type="button" class="btn btn-secondary" id="btn-register">Registrarse</button></a>
				  	<a class="navbar-brand" href="../controller/cs.php" id="title-nav"><button type="button" style="display:none;" class="btn btn-secondary" id="btn-logout">Cerrar sesión</button></a>
				  	<a class="navbar-brand" href="login.php" id="title-nav"><button type="button" class="btn btn-secondary" id="btn-login">Ingresar</button></a>
				</nav>
				<br>
				<br>
				<br>
				<strong id="frase" style="font-size:50px">Resultados de la búsqueda: <?php echo $rows; ?></strong>
				<br>
				<br>
				<form action="search.php#table-user-container" method="GET">
					<input type="text" name="master-search" value="<?php echo $master_search; ?>" placeholder="Búsqueda" class="form-control" id="text-search" autocomplete="off" required>
					<br>
					<select name="filter-search" class="form-control" id="filter-search">
						<option value="all">Todos los campos </option>
						<option value="titulo">Título</option>
						<option value="autor">Autor</option>
						<option value="categoria">Categoría</option>
					</select>
					<br>
					<a href="../" id="btn-back"><button type="button" class="btn btn-danger">Regresar al inicio</button></a>
					<button type="submit" class="btn btn-primary" id="btn-search">Buscar</button>
				</form>
			</div>
			<hr>
			<div id="table-user-container">
				<table id="search-table-user">
					<thead style="text-align:center;">
						<th style="width:15%">Descarga</th><th>Información</th><th>Vista Previa</th>
					</thead>
					<?php
						if ($rows==0) {
							echo "<tr style='text-align:center;'>";
							echo "<td colspan='3'><h3>No se encontraron resultados :(</h3></td>";
							echo "</tr>";
						} else {
							while ($value=mysqli_fetch_array($rsSearch)) {
								echo "<tr>";
								echo "<td style='text-align:center;'><a target='_blank' href='../controller/email/email.php?libro=$value[1]&pdf=$value[2]'><button type='button' class='btn btn-primary'>Leer / Descargar</button></a></td><td><b>$value[1]</b><br><b>Por: </b><i>$value[3]</i><br><b>Editor: </b>$value[7]<br><b>Categoría: </b> $value[5]</td><td style='text-align:center;'><iframe src='../controller/library/$value[2]' style='width:300px; height:440px;'></iframe></td>";
								echo "</tr>";
							}
						}
					?>
				</table>
			</div>
			<div id="table-admin-container" style="display:none">
				<table id="search-table-admin">
					<thead style="text-align:center;">
						<th style="width:15%">Descarga</th><th>Información</th><th>Vista Previa</th><th>Opciones</th>
					</thead>
					<?php
						if ($rows==0) {
							echo "<tr style='text-align:center;'>";
							echo "<td colspan='4'><h3>No se encontraron resultados :(</h3></td>";
							echo "</tr>";
						} else {
							while ($value=mysqli_fetch_array($rsSearch2)) {
								echo "<tr>";
								echo "<td style='text-align:center;'><a target='_blank' href='../controller/email/email.php?libro=$value[1]&pdf=$value[2]'><button type='button' class='btn btn-primary'>Leer / Descargar</button></a></td><td><b>$value[1]</b><br><b>Por: </b><i>$value[3]</i><br><b>Editor: </b>$value[7]<br><b>Categoría: </b> $value[5]</td><td style='text-align:center;'><iframe src='../controller/library/$value[2]' style='width:300px; height:440px;'></iframe></td><td style='text-align:center;'><a href='insertar_libro.php?id_libro=$value[0]&libro=$value[1]&autor=$value[3]&id_editorial=$value[6]&id_categoria=$value[4]&master-search=$master_search&filter-search=$filter_search'><button type='button' class='btn btn-info'>Actualizar</button></a> <a href='crud/eliminarLibro.php?id_libro=$value[0]&master-search=$master_search&filter-search=$filter_search'><button type='button' class='btn btn-danger'>Eliminar</button></a></td>";
								echo "</tr>";
							}
						}
					?>
					<tr style="text-align:center;">
						<td colspan="4"><a href="../view/insertar_libro.php?master-search=<?php echo $master_search ?>&filter-search=<?php echo $filter_search ?>" id="btn-nl"><button type="button" class="btn btn-lg btn-primary">Añadir libros</button></a></td>
					</tr>
				</table>
				<hr>
			</div>
		</div>
	</center>
</body>
<script src="../controller/js/jsjq.js"></script>
<script src="../controller/js/dt.js"></script>
<script src="../controller/js/config.js"></script>
<script type="text/javascript">
	var filter = "<?php echo $filter_search ?>";
	document.getElementById("filter-search").value=""+filter+"";
</script>
<script type="text/javascript">
	<?php
		if (isset($user) && isset($password)) {
			echo "document.getElementById('btn-register').style.display='none'; ";
			echo "document.getElementById('btn-login').style.display='none'; ";
			echo "document.getElementById('btn-logout').style.display='block'; ";
			echo "document.getElementById('text-welcome').style.display='block'; ";
		} else {
			echo "document.getElementById('btn-register').style.display='block'; ";
			echo "document.getElementById('btn-login').style.display='block'; ";
			echo "document.getElementById('btn-logout').style.display='none'; ";
			echo "document.getElementById('text-welcome').style.display='none'; ";
		}

		if ($admin=='t') {
			echo "document.getElementById('table-user-container').style.display='none'; ";
			echo "document.getElementById('table-admin-container').style.display='block'; ";
		} else {
			echo "document.getElementById('table-user-container').style.display='block'; ";
			echo "document.getElementById('table-admin-container').style.display='none'; ";
		}
	?>
</script>
</html>
