<?php
include("config.php");
$md5Clave = md5($_POST[pass]);

$insUsuario=mysqli_query($con,"INSERT INTO cw_users (user,pass,email,age,sex) VALUES ('$_POST[user]','$md5Clave','$_POST[email]','$_POST[age]','$_POST[sex]')") or die ('ERRO INS-USU: '.mysqli_error($con));
header('Location: index.php');
?>