<?php
	include_once "../model/conexion.php";
	include_once "../model/functions_bd.php";
	$bd=new functions();

	$user=$_POST["usuario"];
	$password=$_POST["password"];

	$rsVerify=$bd->verificacion($user, $password);
	$rsLector=$bd->getLector($user, $password);
	$rsAdmin=$bd->getAdmin($user, $password);
	$rsCorreo=$bd->getEmail($user, $password);
	$row=mysqli_fetch_assoc($rsVerify);
	$name=mysqli_fetch_array($rsLector);
	$admin=mysqli_fetch_array($rsAdmin);
	$email=mysqli_fetch_array($rsCorreo);

	if ($row>0) {
		session_start();
		$_SESSION['user']=$user;
		$_SESSION['password']=$password;
		$_SESSION['name']=$name[0];
		$_SESSION['admin']=$admin[0];
		$_SESSION['correo']=$email[0];
		//setcookie("user", $user);
		//setcookie("password", $password);

		header("Location: ../index.php");
	} else {
		header("Location: ../view/login.php");
	}

?>