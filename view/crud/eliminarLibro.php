<?php
	include_once "../../model/conexion.php";
	include_once "../../model/functions_bd.php";
	$bd=new functions();

	$id_libro=$_GET["id_libro"];
	$master_search=$_GET["master-search"];
	$filter_search=$_GET["filter-search"];

	$query="delete from libro where id_libro=".$id_libro." ";
	$rsDeleteLibro=$bd->execute($query);

	header("Location: ../search.php?master-search=".$master_search."&filter-search=".$filter_search);
?>