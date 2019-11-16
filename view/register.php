<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/cosmo.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Regístrate</title>
</head>
<body style="background:url('img/fondoLogin.png') no-repeat; background-size:100%">
	<center>
		<div id="container">
			<div class="central" id="login-dialog">
				<img src="img/lector.png" style="width:120px;">
				<hr>
				<form action="../model/insertar_usuario.php" method="POST">
					<table border="0" style="text-align:left; width:90%;">
						<tr>
							<td><img src="img/nombre.png" style="width:25px; margin-bottom:8px"></td><td style="padding:5px"><h4>Nombre: </h4></td><td style="padding:5px"><input type="text" name="lector" class="form-control" placeholder="Nombre" autofocus autocomplete="off" required></td>
						</tr>
						<tr>
							<td><img src="img/user.png" style="width:25px; margin-bottom:8px"></td><td style="padding:5px"><h4>Usuario: </h4></td><td style="padding:5px"><input type="text" name="usuario" class="form-control" placeholder="Usuario" autocomplete="off" required></td>
						</tr>
						<tr>
							<td><img src="img/password.png" style="width:25px; margin-bottom:8px"></td><td style="padding:5px"><h4>Contraseña: </h4></td><td style="padding:5px"><input type="password" name="password" class="form-control" placeholder="Contraseña" required></td>
						</tr>
						<tr>
							<td><img src="img/correo.png" style="width:25px; margin-bottom:8px"></td><td style="padding:5px"><h4>E-Mail: </h4></td><td style="padding:5px"><input type="email" name="correo" class="form-control" placeholder="Correo electrónico" autocomplete="off" required></td>
						</tr>
					</table>
					<hr>
					<a href="login.php">¿Ya tienes cuenta? Ingresa aquí</a>
					<br>
					<br>
					<a href="../index.php"><button type="button" class="btn btn-danger" style="width:25%; height:40px">Regresar</button></a> 
					<button type="submit" class="btn btn-primary" style="width:25%; height:40px">Registrarme</button>
				</form>
			</div>
		</div>
	</center>
</body>
</html>