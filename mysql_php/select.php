<?php 
	include_once 'includes/connection_db.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	
	//======== CONSULTAR ========= //
	# code...
	$query = "SELECT * FROM estudiantes ORDER BY id_estudiante DESC LIMIT 2";
	$resultQuery = mysqli_query($con,$query);
	while ($row = mysqli_fetch_array($resultQuery)) {
	 	echo $row["id_estudiante"]." ".$row["nombre"]." ".$row["apellidos"]." ".$row["correo"];
	 	echo "<br />";
 	}

 ?>