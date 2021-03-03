<?php 
session_start();

if( $_SESSION['user_id']=='') {

    header("Location:index.php?msg=2");
}
else{
require_once("conf.php");

$asset_id = $_GET['asset_id'];

$logical_delete= " UPDATE assets SET L_del = 'Y' WHERE asset_id = '$asset_id' ";

mysqli_query($conn,$logical_delete);

header("Location:raw_materials.php");

}?>