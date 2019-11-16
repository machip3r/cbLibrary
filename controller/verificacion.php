<?php
	session_start();
	$user=$_SESSION["user"];
	$password=$_SESSION["password"];
	//$user=$_COOKIE["user"];
	//$password=$_COOKIE["password"];
	if (!isset($user) && !isset($password)) {
		header("Location: ../../view/login.php");
	}
?>