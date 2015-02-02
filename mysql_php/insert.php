<?php 
	include_once 'includes/connection_db.php'; //INCLUYO ARCHIVO DE CONEXIÓN

	$nombre=$POST['nombre'];
		//======== INSERTAR ========= //
		$insert = "INSERT INTO estudiantes (nombre,apellidos,correo) VALUES('Arrunchis','Paquita Gallego','paquita@gmail.com')";
		if(mysqli_query($con, $insert)){
			echo "Se insertaron los datos correctamente :)";
		}
		else{
			echo "Los datos no se pudieron insertar :(";
		}
	 		

 ?>