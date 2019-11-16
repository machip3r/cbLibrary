<?php
	include_once "../model/conexion.php";
	include_once "../model/functions_bd.php";

	$master_search=$_GET["master-search"];
	$filter_search=$_GET["filter-search"];
	$id_libro=$_GET["id_libro"];
	$libro=$_GET["libro"];
	$autor=$_GET["autor"];
	$id_editorial=$_GET["id_editorial"];
	$id_categoria=$_GET["id_categoria"];

	$bd=new functions();
	$rsCategoria=$bd->comboCategoria();
	$rsEditorial=$bd->comboEditorial();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/cosmo.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Agregar un libro</title>
</head>
<body style="background:url('img/fondoNuevoLibro.png') no-repeat; background-size:100%">
	<center>
		<div id="container">
			<div class="central" id="form-nuevo-libro">
				<br>
				<img src="img/iconoNuevoLibro.png" style="width:180px;">
				<hr>
				<form enctype="multipart/form-data" action="crud/actualizarLibro.php" method="POST">
					<input type="hidden" name="id_libro" value="<?php echo $id_libro; ?>">
					<input type="hidden" name="master_search" value="<?php echo $master_search; ?>">
					<input type="hidden" name="filter_search" value="<?php echo $filter_search; ?>">
					<table border="0" style="text-align:left; width:85%;">
						<tr>
							<td style="padding:5px"><img src="img/pdf.png" style="width:25px; margin-bottom:2px"></td><td style="padding:5px">PDF: </td><td style="padding:5px"><div class="custom-file"><input type="file" name="archivo" class="custom-file-input" required><label class="custom-file-label" for="inputGroupFile02">Seleccionar PDF</label></div></td>
						</tr>
						<tr>
							<td style="padding:5px"><img src="img/libro.png" style="width:25px; margin-bottom:8px"></td><td style="padding:5px">Nombre del Libro: </td><td style="padding:5px"><input type="text" name="libro" value="<?php echo $libro; ?>" class="form-control" placeholder="Nombre" autofocus autocomplete="off" required></td>
						</tr>
						<tr>
							<td style="padding:5px"><img src="img/autor.png" style="width:25px; margin-bottom:6px"></td><td style="padding:5px">Autor: </td><td style="padding:5px"><input type="text" name="autor" value="<?php echo $autor; ?>" class="form-control" placeholder="Autor" autocomplete="off" required></td>
						</tr>
						<tr>
							<td style="padding:5px"><img src="img/iconoEditorial.png" style="width:25px; margin-bottom:6px"></td><td style="padding:5px">Editorial: </td><td style="padding:5px"><select name='editorial' id="selectE" class="form-control" required>
								<option value="">Selecciona la editorial</option>
							<?php
								while ($value=mysqli_fetch_array($rsEditorial)) {
									echo "<option value=".$value[0].">".$value[1]."</option>";
								}
							?>
							</select></td>
						</tr>
						<tr>
							<td style="padding:5px"><img src="img/categoria.png" style="width:25px; margin-bottom:2px"></td><td style="padding:5px">Categoría: </td><td style="padding:5px"><select name='categoria' id="selectC" class="form-control" required>
								<option value="">Selecciona la categoría</option>
							<?php
								while ($value=mysqli_fetch_array($rsCategoria)) {
									echo "<option value=".$value[0].">".$value[1]."</option>";
								}
							?>
							</select></td>
						</tr>
					</table>
					<hr>
					<a href="../view/search.php?master-search=<?php echo $master_search ?>&filter-search=<?php echo $filter_search ?>"><button type="button" class="btn btn-warning" style="width:200px; height:50px">Cancelar</button></a>
					<button type="submit" class="btn btn-primary" style="width:200px; height:50px">Agregar</button>
				</form>
			</div>
		</div>
	</center>
</body>
<script type="text/javascript">
	<?php
		if ($id_libro!="") {
			echo "document.getElementById('selectE').value=".$id_editorial."; ";
			echo "document.getElementById('selectC').value=".$id_categoria."; ";
		}
	?>
</script>
</html>