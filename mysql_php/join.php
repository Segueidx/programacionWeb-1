<?php 
	include_once 'includes/connection_db.php'; //INCLUYO ARCHIVO DE CONEXIÓN

		//======== Unir consultas de distintas tablas ========= // 
		//inner Join es igual a Join";
		$selectJoin = "SELECT estudiantes.nombre,materia.nombre_materia FROM estudiantes 
			INNER JOIN estudiante_materia ON estudiantes.id_estudiante = estudiante_materia.id_estudiante
			INNER JOIN materia            ON materia.id_materia        = estudiante_materia.id_materia";

		$resultQueryJoin = mysqli_query($con,$selectJoin);
		while ($row = mysqli_fetch_array($resultQueryJoin)) {
	 		echo $row["nombre"]." ".$row["nombre_materia"];
	 		echo "<br />";
 		}
			
 ?>