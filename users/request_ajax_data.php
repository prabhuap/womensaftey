<?php
include('includes/config.php');
if(!empty($_POST["stateid"])) 
{
 $id=intval($_POST['stateid']);
 if(!is_numeric($id)){
 
 	echo htmlentities("invalid Station");exit;
 }
 else{
 $stmt = mysqli_query($bd, "SELECT station FROM station WHERE stateid ='$id'");
 ?><option selected="selected">Select Station </option><?php
 while($row=mysqli_fetch_array($stmt))
 {
  ?>
  <option value="<?php echo htmlentities($row['station']); ?>">
  <?php echo htmlentities($row['station']); ?></option>
  <?php
 }
}

}else{
    echo '0';
}
?>