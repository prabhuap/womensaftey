<?php 
include('include/config.php');

$lats=$_POST['latt'];
$longs=$_POST['longt'];

echo "insert into emergency(lattitude,longitude) values('$lats','$longs')";

$query=mysqli_query($bd, "insert into emergency(lattitude,longitude) values('$lats','$longs')");




?>