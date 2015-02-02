<?php 
	include_once 'includes/connection_db.php'; //INCLUYO ARCHIVO DE CONEXIÓN

		//======== Eliminar ========= // 
		//$delete = "DELETE FROM estudiantes WHERE id_estudiante= 17";
		$delete = "DELETE FROM estudiantes ORDER BY id_estudiante DESC LIMIT 1";
		if(mysqli_query($con, $delete)){
			echo "Se borraron los datos correctamente :)";
		}
		else{
			echo "Los datos no se pudieron borrar :(";
		}

 ?>