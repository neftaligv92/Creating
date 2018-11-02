<?php
$servidor="localhost";
$usuario="root";
$password="";
$base="db_creating";

$con=mysqli_connect($servidor,$usuario,$password) or die ('error|No se pudo conectar a la base de datos');
mysqli_select_db($con,$base);

?>