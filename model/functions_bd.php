<?php

	class functions{
		private $conexion;

		function __construct(){
			//$this->conexion=mysqli_connect("localhost", "root", "onepiece", "biblioteca");
            //$this->conexion=mysqli_connect("localhost", "root", "laboratorio", "biblioteca");
            //$this->conexion=mysqli_connect("localhost", "root", "lab3", "biblioteca");
            $this->conexion=mysqli_connect("localhost", "root", "caps2300", "biblioteca");
            //$this->conexion=mysqli_connect("localhost", "root", "cbtis172", "biblioteca");
		}

		public function desconectar(){
			mysqli_close($this->conexion);
		}

		public function tablaBusqueda($search, $filter){
			if ($filter=="all") {
				$query="select d.id_libro, d.libro, d.nombre_archivo, a.autor, b.id_categoria, b.categoria, c.id_editorial, c.editorial from libro d inner join autor a on(d.id_autor = a.id_autor) inner join categoria b on(d.id_categoria = b.id_categoria) inner join editorial c on(d.id_editorial = c.id_editorial) where a.autor like '%".$search."%' or b.categoria like '%".$search."%' or c.editorial like '%".$search."%' or d.libro like '%".$search."%' ";
			} elseif ($filter=="titulo") {
				$query="select d.id_libro, d.libro, d.nombre_archivo, a.autor, b.id_categoria, b.categoria, c.id_editorial, c.editorial from libro d inner join autor a on(d.id_autor = a.id_autor) inner join categoria b on(d.id_categoria = b.id_categoria) inner join editorial c on(d.id_editorial = c.id_editorial) where d.libro like '%".$search."%' ";
			} elseif ($filter=="autor") {
				$query="select d.id_libro, d.libro, d.nombre_archivo, a.autor, b.id_categoria, b.categoria, c.id_editorial, c.editorial from libro d inner join autor a on(d.id_autor = a.id_autor) inner join categoria b on(d.id_categoria = b.id_categoria) inner join editorial c on(d.id_editorial = c.id_editorial) where a.autor like '%".$search."%' ";
			} elseif ($filter=="categoria") {
				$query="select d.id_libro, d.libro, d.nombre_archivo, a.autor, b.id_categoria, b.categoria, c.id_editorial, c.editorial from libro d inner join autor a on(d.id_autor = a.id_autor) inner join categoria b on(d.id_categoria = b.id_categoria) inner join editorial c on(d.id_editorial = c.id_editorial) where b.categoria like '%".$search."%' ";
			}

			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function comboCategoria(){
			$query="select * from categoria";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function comboEditorial(){
			$query="select * from editorial";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function verificacion($user, $password){
			$query="select * from usuario where usuario='".$user."' and contrasena=SHA('".$password."') ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}
		public function getLector($user, $password){
			$query="select lector from usuario where usuario='".$user."' and contrasena=SHA('".$password."') ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function getAdmin($user, $password){
			$query="select administracion from usuario where usuario='".$user."' and contrasena=SHA('".$password."') ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function getEmail($user, $password){
			$query="select email from usuario where usuario='".$user."' and contrasena=SHA('".$password."') ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function checarEmail($correo){
			$query="select email from usuario where email='".$correo."' ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function checarUser($usuario){
			$query="select usuario from usuario where usuario='".$usuario."' ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function execute($query) {       
        	$rs=mysqli_query($this->conexion,$query);         
			$this->query_count++; 
			return $rs;    
		}

		public function getIdAutor($autor){
			$query="select id_autor from autor where autor='".$autor."' ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function getEmailUser(){
			$query="select email from usuario where administracion!='t' ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}

		public function getEmailAdmin(){
			$query="select email from usuario where administracion='t' ";
			$rs=mysqli_query($this->conexion, $query);
			return $rs;
		}
	}
?>