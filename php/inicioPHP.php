<?php 

//============= Declaración variables ============ //
$a=1;
$b=2;
$estado=1;

//============= SWITCH============ //
echo "Switch";
echo "<br/>";
switch ($estado) {
	case 0:
		# code...
		echo $a;
		break;
	
	default:
		# code...
		echo $b;
		break;
}

echo "<br/>";
echo "<br/>";

//============= For ============ //
echo "For";
echo "<br/>";
for ($i=0; $i < 10 ; $i++) { 
	# code...

	echo $i;
	echo "<br/>";
}

//============= WHILE ============ //
echo "While";
echo "<br/>";
$i = 0;
while ($i <= 10){
    echo $i;
    $i++;
    echo "<br/>";
}



//============= Opereaciones ============ //
echo "Operaciones";
echo "<br/>";


echo "<br/>";
$h=5;
$g=4;

echo "Suma 4+2"." "."="." ";
echo 4+2;

echo "<br/>";
echo "Resta 4-2"." "."="." ";
echo 4-2;

echo "<br/>";
echo "Multiplicación 4*2"." "."="." ";
echo 4*2;

echo "<br/>";
echo "División 4/2"." "."="." ";
echo 4/2;
?>