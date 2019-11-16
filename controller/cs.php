<?php
	session_start();
	session_destroy();
	//setcookie('user','',time()-100);
	//setcookie('password','',time()-100);
	header("Location: ../view/login.php");
?>