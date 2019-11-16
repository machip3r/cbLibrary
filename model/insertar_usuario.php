<?php
	include_once "conexion.php";
	include_once "functions_bd.php";
	$bd=new functions();
	
	$lector=$_POST["lector"];
	$usuario=$_POST["usuario"];
	$password=$_POST["password"];
	$correo=trim($_POST["correo"]);

	$rsUsuario=$bd->checarUser($usuario);
	$rsEmail=$bd->checarEmail($correo);
	$row=mysqli_num_rows($rsUsuario);
	$row2=mysqli_num_rows($rsEmail);

	if ($row==0) {
		if ($row2==0) {
			$query="insert into usuario(lector, usuario, contrasena, email) values('".$lector."', '".$usuario."', SHA('".$password."'), '".$correo."') ";
			$rsNuevoUsuario=$bd->execute($query);
			header("Location: ../view/login.php");
		} else {
			header("Location: ../view/register.php");
		}
	} else {
		header("Location: ../view/register.php");
	}
?>