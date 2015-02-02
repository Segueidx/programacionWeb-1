<?php 
	include_once 'conexion.php'; //INCLUYO ARCHIVO DE CONEXIÓN

	$estado=4;

switch ($estado) {
	case 0:
		//======== CONSULTAR ========= //
		# code...
		$query = "SELECT * FROM estudiantes ORDER BY id_estudiante DESC LIMIT 2";
		$resultQuery = mysqli_query($con,$query);
		while ($row = mysqli_fetch_array($resultQuery)) {
	 		echo $row["id_estudiante"]." ".$row["nombre"]." ".$row["apellidos"]." ".$row["correo"];
	 		echo "<br />";
 		}
		break;
	case 1:
		# code...
		//======== INSERTAR ========= //
		$insert = "INSERT INTO estudiantes (nombre,apellidos,correo) VALUES('Arrunchis','Paquita Gallego','paquita@gmail.com')";
		if(mysqli_query($con, $insert)){
			echo "Se insertaron los datos correctamente :)";
		}
		else{
			echo "Los datos no se pudieron insertar :(";
		}
	 		
	
		break;
		
	case 2:
		# code...
		//======== Eliminar ========= // 
		//$delete = "DELETE FROM estudiantes WHERE id_estudiante= 17";
		$delete = "DELETE FROM estudiantes ORDER BY id_estudiante DESC LIMIT 1";
		if(mysqli_query($con, $delete)){
			echo "Se borraron los datos correctamente :)";
		}
		else{
			echo "Los datos no se pudieron borrar :(";
		}
		break;
	case 3:
		# code...
		//======== Cambiar ========= // 
		$update = "UPDATE estudiantes SET nombre='Arnulio' WHERE id_estudiante = 16";
		if(mysqli_query($con, $update)){
			echo "Se cambiaron los datos correctamente :)";
		}
		else{
			echo "Los datos no se pudieron cambiaron :(";
		}
	break;
	case 4:
		# code...
		//======== Unir consultas con distintas tablas ========= // 
		//inner Join es igual a Join";
		$selectJoin = "SELECT estudiantes.nombre,materia.nombre_materia FROM estudiantes 
			INNER JOIN estudiante_materia ON estudiantes.id_estudiante = estudiante_materia.id_estudiante
			INNER JOIN materia            ON materia.id_materia        = estudiante_materia.id_materia";

		$resultQueryJoin = mysqli_query($con,$selectJoin);
		while ($row = mysqli_fetch_array($resultQueryJoin)) {
	 		echo $row["nombre"]." ".$row["nombre_materia"];
	 		echo "<br />";
 		}
	break;
	default:
		# code...
		break;
}
 ?>