<!DOCTYPE html>
<html>
	<head>
		<title>Enviando información de HTML a PHP</title>
	</head>
	<body>
		<!-- text -->
		<form action="insert.php" method="post">
			 <p>Su nombre: <input type="text" name="nombre" /></p>
			 <p>Su edad: <input type="text" name="apellidos" /></p>
			 <p>Su edad: <input type="text" name="correo" /></p>
			 <p><input type="submit" /></p>
		</form>

		<!-- Select -->
		<form action="script.php" method="post">
		   Sistema Operativo:<br /> 
		   <select name="programa">    
		       <option value="Windows" selected="selected">Windows</option>
		       <option value="Machintosh">Mac</option>
		       <option value="Linux">Linux</option>
		   </select>
		   <p><input type="submit" /></p>
		</form>
	</body>
</html>