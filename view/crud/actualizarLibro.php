<?php
	include_once "../../model/conexion.php";
	include_once "../../model/functions_bd.php";
	$bd=new functions();

	$id_libro=$_POST["id_libro"];
	$libro=strtoupper($_POST['libro']);
	$categoria=$_POST["categoria"];
	$autor=strtoupper($_POST["autor"]);
	$editorial=$_POST["editorial"];
	$nombre=$_FILES['archivo']['name'];
	$tipo=$_FILES['archivo']['type'];
	$tamanio=$_FILES['archivo']['size'];
	$ruta=$_FILES['archivo']['tmp_name'];
	$destino="../../controller/library/".$nombre;
	$master_search=$_POST["master_search"];
	$filter_search=$_POST["filter_search"];

	$rsIdAutor=$bd->getIdAutor($autor);
	$rowsAutor=mysqli_num_rows($rsIdAutor);

	if (copy($ruta, $destino)) {
		if ($id_libro!="") {
			if ($rowsAutor==0) {
				$query="insert into autor(autor) values('$autor')";
				$rsNuevoAutor=$bd->execute($query);
			}

			$rsIdAutor=$bd->getIdAutor($autor);
			$id_autor=mysqli_fetch_array($rsIdAutor);

			$query="update libro set id_autor=$id_autor[0], id_categoria=$categoria, id_editorial=$editorial, libro='".$libro."', tamanio='".$tamanio."', tipo='".$tipo."', nombre_archivo='".$nombre."' where id_libro=".$id_libro." ";
			$rsUpdateLibro=$bd->execute($query);

			header("Location: ../search.php?master-search=".$master_search."&filter-search=".$filter_search);
		} else {
			if ($rowsAutor==0) {
				$query="insert into autor(autor) values('$autor')";
				$rsNuevoAutor=$bd->execute($query);
			}

			$rsIdAutor=$bd->getIdAutor($autor);
			$id_autor=mysqli_fetch_array($rsIdAutor);

			$query="insert into libro(id_autor, id_categoria, id_editorial, libro, tamanio, tipo, nombre_archivo) values($id_autor[0], $categoria, $editorial, '$libro', '$tamanio', '$tipo', '$nombre') ";
			$rsNuevoLibro=$bd->execute($query);

			header("Location: ../../controller/email/email_nuevo_libro.php?master-search=".$master_search."&filter-search=".$filter_search."&autor=".$autor."&libro=".$libro);
		}
	} else {
		echo "ERROR";
	}
?>