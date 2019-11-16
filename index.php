<?php
	session_start();
	$user=$_SESSION['user'];
	$password=$_SESSION['password'];
	$name=$_SESSION['name'];
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="view/css/cosmo.css">
	<link rel="stylesheet" type="text/css" href="view/css/style.css">
	<title>Inicio CBLibrary</title>
</head>
<body>
	<center>
		<div id="container">
			<div id="banner">
				<nav class="navbar navbar-expand-lg" id="nav-top">
					<h4 id="text-welcome" style="display:none; color:white">Bienvenido(a) <?php echo $name; ?></h4>
				  	<a class="navbar-brand" href="view/register.php" id="title-nav"><button type="button" class="btn btn-secondary" id="btn-register">Registrarse</button></a>
				  	<a class="navbar-brand" href="controller/cs.php" id="title-nav"><button type="button" style="display:none;" class="btn btn-secondary" id="btn-logout">Cerrar sesión</button></a>
				  	<a class="navbar-brand" href="view/login.php" id="title-nav"><button type="button" class="btn btn-secondary" id="btn-login">Ingresar</button></a>
				</nav>
				<br>
				<h1 id="title-banner">CBLibrary</h1>
				<strong id="frase">El amor de las bibliotecas, como en la mayoría de amores,<br>se debe aprender. -<i>Alberto Manguel</i></strong>
				<br>
				<br>
				<form action="view/search.php#table-user-container" method="GET">
					<input type="text" name="master-search" placeholder="Búsqueda" class="form-control" id="text-search" autofocus autocomplete="off" required>
					<br>
					<select name="filter-search" class="form-control" id="filter-search">
						<option value="all">Todos los campos </option>
						<option value="titulo">Título</option>
						<option value="autor">Autor</option>
						<option value="categoria">Categoría</option>
					</select>
					<br>
					<button type="submit" class="btn btn-primary" id="btn-search">Buscar</button>
				</form>
			</div>
			<hr>
			<div id="img-editorial">
				<img src="view/img/editorial.png" id="imagenE">
			</div>
			<div id="section">
				<h2>En nuestra biblioteca encontrarás libros de </h2>
				<br>
				<br>
				<table style="width:70%;">
					<tr>
						<td style="padding:10px"><a href="view/search.php?master-search=ADMINISTRACION&filter-search=categoria"><button type="button" class="btn btn-info" style="width:190px; height:130px; text-align:center">ADMINISTRACION</button></a></td><td style="padding:10px"><a href="view/search.php?master-search=ELECTRICIDAD&filter-search=categoria"><button type="button" class="btn btn-info" style="width:190px; height:130px; text-align:center">ELECTRICIDAD</button></a></td><td style="padding:10px"><a href="view/search.php?master-search=OFIMATICA&filter-search=categoria"><button type="button" class="btn btn-info" style="width:190px; height:130px; text-align:center">OFIMATICA</button></a></td>
					</tr>
					<tr>
						<td style="padding:10px"><a href="view/search.php?master-search=PROGRAMACION&filter-search=categoria"><button type="button" class="btn btn-info" style="width:190px; height:130px; text-align:center">PROGRAMACION</button></a></td><td style="padding:10px"><a href="view/search.php?master-search=QUIMICA&filter-search=categoria"><button type="button" class="btn btn-info" style="width:190px; height:130px; text-align:center">QUIMICA</button></a></td><td style="padding:10px"><a href="view/search.php?master-search=SOPORTE&filter-search=categoria"><button type="button" class="btn btn-info" style="width:190px; height:130px; text-align:center">SOPORTE Y<br>MANTENIMIENTO DE<br>COMPUTO</button></a></td>
					</tr>
				</table>
			</div>
			<br clear="all">
			<br clear="all">
			<hr>
			<div id="about">
				<h1>Conoce un poco sobre CBLibrary</h1>
				<br>
				<div style="position:relative;">
					<div id="cesar" style="width:20%; float:left">
						<img src="view/img/caps.png" style="width:500px">
					</div>
					<div style="width:60%; display:inline-block; margin-top:100px; background-color:white">
						<img src="view/img/logo.png" style="width:300px">
						<br>
						<br>
						<h3>Esta biblioteca esta creada por dos grandes empresarios en la industria de la programación.</h3>
						<h1 style="color:#F47D49">Cesar Perdomo y Braulio Baca</h1>
						<h3>Orientada para el CBTis 172</h3>
					</div>
					<div id="mac" style="width:20%; float:right;">
						<img src="view/img/mac.png" style="width:500px; margin-left:-240px;">
					</div>
				</div>
				<br clear="all">
				<hr>
			</div>
		</div>
	</center>
</body>
<script type="text/javascript">
	<?php
		if (isset($user) && isset($password)) {
			echo "document.getElementById('btn-register').style.display='none'; ";
			echo "document.getElementById('btn-login').style.display='none'; ";
			echo "document.getElementById('text-welcome').style.display='block'; ";
			echo "document.getElementById('btn-logout').style.display='block'; ";
		} else {
			echo "document.getElementById('btn-register').style.display='block'; ";
			echo "document.getElementById('btn-login').style.display='block'; ";
			echo "document.getElementById('text-welcome').style.display='none'; ";
			echo "document.getElementById('btn-logout').style.display='none'; ";
		}
	?>
</script>
</html>
