<?php 
session_start();

if( $_SESSION['user_id']=='') {

    header("Location:index.php?msg=2");
}
else{
session_start();

require_once("conf.php");

$filename = $_FILES["uploadfile"]["name"]; 
$tempname = $_FILES["uploadfile"]["tmp_name"];     
$folder = "uploads/".$filename;

$created_by = $_SESSION['user_id'];


$mat_code=$_POST['code'];
$mat_description=$_POST['description'];
$mat_count=$_POST['count'];
$mat_cost=$_POST['cost'];
$mat_warrenty_from=$_POST['warrenty_from'];
$mat_warrenty_to=$_POST['warrenty_to'];
$mat_puchase_date=$_POST['purchase_date'];
$mat_unit_of_measurement=$_POST['unit_of_measurement'];
$mat_code=$_POST['code'];
$mat_type=$_POST['assettype'];
$mat_assigned_to=$_POST['assigned_to'];


$insert ="INSERT INTO assets
   (`asset_code`,`asset_description`,`asset_count`,`asset_cost`,`unit_of_measurement`,`asset_warranty_start`,`asset_warranty_end`,`purchase_date`,`asset_type`,`image`,`assigned_to`) VALUES
   (' ".$mat_code."','".$mat_description."','".$mat_count."','".$mat_cost."','".$mat_unit_of_measurement."','".$mat_warrenty_from."','".$mat_warrenty_to."','".$mat_puchase_date."','".$mat_type."','".$filename."','".$mat_assigned_to."')";

mysqli_query($conn,$insert);


header("location:raw_materials.php"); 
} 
?>