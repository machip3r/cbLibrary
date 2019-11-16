<?php
	include_once "../controller/verificacion_login.php";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/cosmo.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Ingresa</title>
</head>
<body style="background:url('img/fondoLogin.png') no-repeat; background-size:100%">
	<center>
		<div id="container">
			<div class="central" id="login-dialog">
				<img src="img/lector.png" style="width:190px;">
				<hr>
				<form action="../controller/verificar.php" method="POST">
					<table border="0" style="text-align:left; width:90%;">
						<tr>
							<td><img src="img/user.png" style="width:25px; margin-bottom:8px"></td><td style="padding:5px"><h4>Usuario: </h4></td><td style="padding:5px"><input type="text" name="usuario" class="form-control" placeholder="Usuario" autofocus autocomplete="off" required></td>
						</tr>
						<tr>
							<td><img src="img/password.png" style="width:25px; margin-bottom:8px"></td><td style="padding:5px"><h4>Contraseña: </h4></td><td style="padding:5px"><input type="password" name="password" class="form-control" placeholder="Contraseña" required></td>
						</tr>
					</table>
					<hr>
					<a href="register.php">¿No tienes cuenta? Regístrate aquí</a>
					<br>
					<br>
					<a href="../index.php"><button type="button" class="btn btn-danger" style="width:25%; height:40px">Regresar</button></a> 
					<button type="submit" class="btn btn-primary" style="width:25%; height:40px">Ingresar</button>
				</form>
			</div>
		</div>
	</center>
</body>
</html>