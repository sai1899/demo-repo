<!DOCTYPE html>  
<html>  
<head>  
<style>  
.error {color: #FF0001;}  
</style>  
</head>  
<body>   


<?php 


include("header.php"); 
$select= "SELECT * FROM am_categories WHERE L_del = ''";
$query = mysqli_query($conn,$select);    

$select_asset_type= "SELECT * FROM am_asset_types  WHERE cat_name = 'Infrastructure' AND L_del = ''";
$query_asset_type = mysqli_query($conn,$select_asset_type);   

?>


<div id="nav_bar">
    <div class="container-fluid p-0">
        <div class="row justify-content-between position-relative p-0 no-gutters" id="border-style">
            <div class="col-md-3">
                <div class="logo">
                    <!-- <a href="admin.php"> <img src="svmlogo.png" style="width:260px; height:80px" class="img-fluid"></a> -->
                </div>
            </div>
            <div class="col-md-6">
                <div class="login-form  p-2 text-right" style = "margin-top:2%;">                    
                    <a href="logout.php" > <button type="submit" title="Logout" class="submit-button"><i class="fa fa-power-off" aria-hidden="true"></i> </button></a>
                    <a href="changepassword.php"><button type="submit" title="Change Password" class="submit-button"><i class="fa fa-key" aria-hidden="true"></i> </button></a>
                </div>

            </div>
        </div>
    </div>
</div>


<div class="container-fluid p-0">
    <div class="row no-gutters p-0">
        <div class="col-2 p-0 emp_style">
            <br>
            
            <ul class="emp_nav" style="">


                <li class="side-menu ml-1 dropdown">
                    <span class="fa fa-laptop p-2 icon-color"></span><a  href="raw_materials.php" role="button" aria-controls="assets_av" class="link-menu"><span style=" font-family: Open Sans, sans-serif;">Raw Materials</span></a>

                   
                </li>

               

                <li class="side-menu ml-1 dropdown">
                    <span class="fa fa-industry p-2 icon-color"></span><a  href="raw_materials.php" role="button" aria-controls="assets_av" class="link-menu"><span style=" font-family: Open Sans, sans-serif;">Lab Materials</a>

                </li>


                <li class="side-menu ml-1 dropdown">
                    <span class="fa fa-sticky-note p-2 icon-color"></span><a data-toggle="collapse" href="#assets_av2" role="button" aria-controls="assets_av" class="link-menu"><span style=" font-family: Open Sans, sans-serif;">Processing</a>

                    <ul class="emp_nav ml-3 collapse" id="assets_av2">
                        <li class="link">
                            <span class="fa fa-plus p-2 icon-color"></span><a href="raw_materials.php" class="link-menu" role="button"><span style=" font-family: Open Sans, sans-serif;">Motors</a>
                        </li>
                        <li>
                            <span class="fa fa-eye p-1 icon-color"></span> <a href="raw_materials.php" class="link-menu"><span style=" font-family: Open Sans, sans-serif;">Electricals</a>
                        </li>
                    </ul>
                </li>


                <li class="side-menu ml-1 dropdown">
                    <span class="fa fa-users  p-2 icon-color"></span><a  href="raw_materials.php" role="button" aria-controls="users_av" class="link-menu"><span style=" font-family: Open Sans, sans-serif;">Spare Parts</a>
                </li>
                
                <li class="side-menu ml-1 dropdown">
                    <span class="fa fa-users  p-2 icon-color"></span><a  href="#users_av" role="button" aria-controls="users_av" class="link-menu"><span style=" font-family: Open Sans, sans-serif;">Employee</a>
                </li>

             

        </div>
 
        <!-- change password modal  -->

        <div class="modal fade" id="change_password" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body"> 
                                <form method="post" action="password_changed.php" id="log" enctype="multipart/form-data">
                                        <?php if (isset($_GET['msg']) && $_GET['msg']==3){ ?>
                                                <p>New password and Confirm Password Doesn't match</p>

                                         <?php } ?>

                                        <?php if (isset($_GET['msg']) && $_GET['msg']==4){ ?>
                                                <p> Current Password Not Correct</p>

                                        <?php } ?>

                                    <div class="form-group">
                                        <label>Current Password</label>
                                        <input type="password"  class="form-control" name="currentPassword" required><span id="currentPassword" class="required"></span>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>New Password</label>
                                        <input type="password"  class="form-control" name="newPassword" required><span id="newPassword" class="required"></span>
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>Confirm Password</label>
                                        <input type="password"  class="form-control" name="confirmPassword" required><span id="confirmPassword" class="required"></span>
                                    </div>
                                           
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure, you want to change password ?')">Submit</button>
                                    </div>

                                </form>
                                
                            </div>
                        </div>
                    </div>
                </div>



 

     

<?php include("footer.php");?>
<!-- <?php include("form_validations.php");?> -->