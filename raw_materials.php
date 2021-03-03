<?php 

session_start();

if( $_SESSION['user_id']=='') {

    header("Location:index.php?msg=2");
}
else{
require_once("conf.php");
require_once("header.php");
require_once("a_sidebar.php");


$select= " SELECT * FROM assets where L_del!='Y' ";
$query = mysqli_query($conn,$select);

?>



<div class="col-10" style='position:realtive'>
<button class="btn btn-primary" type="submit" style='position:absolute;right:10px' href="#employee_form" class="link-menu" data-toggle="modal" role="button"><span style=" font-family: Open Sans, sans-serif;">Add</button>
    <div class = "cat-table p-3">

   <?php if (isset($_GET['msg']) && $_GET['msg']==15){ ?>
    <p><b> Asset Assigned Successfully</b></p> 

   <?php  } ?>

   <?php if (isset($_GET['msg']) && $_GET['msg']==16){ ?>
    <p><b> Asset Already Assigned</b></p> 

   <?php  } ?>

   <?php if (isset($_GET['msg']) && $_GET['msg']==17){ ?>
    <p><b> Successfully UnAssigned</b></p> 

   <?php  } ?>

        <table id="catTable" >

            <thead class="text-center">
                
                <th> Code </th>
                <th> Category </th>
                <!-- <th> Category </th> -->
                <th> Available </th>
                <th> Type </th>
                <th> Description </th>
                <!-- <th> Picture </th> -->
                <th> Count </th>
                <th> Cost </th>
                <th> Warranty Start </th>
                <th> Warranty End </th>
                <th> Purchased </th>
                <th>Assigned To  </th>

            </thead>

            <tbody class="text-center">

                <?php $i = 0; while($res=mysqli_fetch_assoc($query)){  
                    $id = $res['asset_id'];
                    
                    



                    ?>

                <tr>

                    <td >
                         <?php echo $res['asset_code'];?> 
                    </td>

                    <td >
                         <?php echo $res['asset_cat'];?>
                    </td>


                    <td >
                        <?php echo $res['asset_available']; ?>
                    </td>
                    
                    <td >
                        <?php echo $res['asset_type']; ?>
                    </td>
                    <td >
                        <?php echo $res['asset_description']; ?>
                    </td>
                    <td >
                        <?php echo $res['asset_count']; ?>
                    </td>
                   

                    <td >
                    <?php echo $res['asset_cost'];?>
                    </td>
                    <td >
                    <?php echo $res['asset_warranty_start'];?>
                    </td>
                    <td >
                    <?php echo $res['asset_warranty_end'];?>
                    </td>
                    <td >
                    <?php echo $res['purchase_date'];?>
                    </td>
                    <td >
                    <?php 
                    $empid = $res['assigned_to'];
                    $select_get_name= "SELECT * FROM employee where emp_id=$empid";
                    $query_get_name = mysqli_query($conn,$select_get_name);
                    $res_get_name=mysqli_fetch_assoc($query_get_name);
                    ?>

                    <?php echo $res_get_name['first_name'];?>
                    </td>

                    <td >
                        
                        <?php $assetid = $res['asset_id'];
                        $assettype = $res['asset_type']; ?>

                        <button type="button" class="btn btn-primary btn-sm rounded-1" data-toggle="modal" data-target="#it_asset_image_view<?php echo $res['asset_id']; ?>" title="Image">
                            <i class="fa fa-file-image-o" aria-hidden="true"></i>
                            
                        </button>
                        <a href="all_asstes_logical_delete.php?asset_id=<?php echo $res['asset_id'];?>"  onclick="return confirm('Are you sure, you want to delete ?')" class="btn btn-danger btn-sm rounded-1" title="Delete"><i class="fa fa-trash-o text-white "></i></a>
                            
                        
                         
                    </td>


                </tr>

                
                

              
                <!-- Image View Modal -->

                <div class="modal fade bd-example-modal-lg" id="it_asset_image_view<?php echo $res['asset_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Image of <?php echo $res['asset_id']; ?></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">

                                    <?php
                                        $assetid = $res['asset_id'];
                                        $select_image= " SELECT * FROM assets WHERE asset_id = '$assetid' ";
                                        $query_image = mysqli_query($conn,$select_image);
                                        $res_image=mysqli_fetch_assoc($query_image);
                                    ?>

                                    <div style = "text-align:center;">
                                        <!-- <label> Image </label><br> -->
                                        <img src="uploads\<?php echo $res_image['image']; ?>" width="300" height="300">
                                    
                                    </div>
                                  
                                    
                                    
        

                                    

                                    <div class="modal-footer">                                          
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>

                                    

                                </div>
                            </div>
                        </div>
                    </div>
                </div>




                <?php } ?>

            </tbody>
        </table>
    </div>
</div>

<!-- add form  -->
<div class="modal fade bd-example-modal-lg" id="employee_form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document" >
                    <div class="modal-content" >
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel" >Add</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row justify-content-center my-2">
                                    <div class="product_style col-12">

                                        <form method="post" onsubmit="return addFormValidate()" action="all_assets_add.php" id="log" enctype="multipart/form-data" >
                                            <p class="error">* Required fields</p>                                                                                      
                                            <div class="form-group">
                                                <div class = "row">
                                        
                                                       
                                                    
                                                    <div class="col-md-4">
                                                        <label> Code </label>
                                                        <span class="error">*</span>
                                                        <input type="text" class="form-control"  value="" name="code" placeholder="">   
                                                        <div id="divadd1"></div>               
                                                    </div>
                                                    
                                                    <div class="col-md-8">
                                                        <label> Description </label>
                                                        
                                                        <input  class="form-control" id="address" placeholder=""  name="description"></input>
                                                       
                                                    </div>
                                                </div>
                                            </div><hr>

                                            <div class=" form-group">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <label> Count </label>
                                                        <span class="error">*</span>
                                                        <input type="text" class="form-control" id="email" value="" name="count" placeholder="">
                                                        <div id="div3"></div>
                                                    </div>

                                                    <div class="col-md-3">                                               
                                                        <label> Cost </label>
                                                        <span class="error">*</span>
                                                        <input type="text" class="form-control" id="email" value="" name="cost" placeholder="">
                                                        <div id="div5"></div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <label> Unit Of Measurement </label>
                                                        <span class="error">*</span>
                                                        <input type="text" class="form-control"  id = "phonenumber" value="" name="unit_of_measurement" placeholder="">
                                                        <div id="div4"></div>
                                                    </div> 
                                                    <div class="col-md-3">
                                                        <label> Type </label>
                                                        <span class="error">*</span>
                                                        <?php
                                                $select_brand_Infra= "SELECT * FROM asset_types";
                                                $query_brand_Infra = mysqli_query($conn,$select_brand_Infra);
                                            ?>
                                                        <select class="form-control" name="assettype" id = "assettype">
                                                    
                                                    <?php while($type_asset_type=mysqli_fetch_assoc($query_brand_Infra)) { ?>
                                            
                                                    <option value="<?php echo $type_asset_type['id']?>"><?php echo $type_asset_type['asset_type']?> </option>
                                            
                                                    <?php } ?>
                                                </select>
                                                    </div>                                                       
                                                </div>
                                            </div><hr>

                                            <div class="form-group">
                                                <div class = "row">
                                                    
                                                    <div class="col-md-4">
                                                        <label> Purchase Date </label>
                                                        <input type="date" class="form-control" id="dob" value="" name="purchase_date" placeholder="Date of Birth">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label> Warrenty From </label>
                                                        <span class="error">*</span>
                                                        <input type="date" class="form-control" id="dob" value="" name="warrenty_from" placeholder="Date of Birth">
                                                        <div id="div8"></div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <label> Warrenty To </label>
                                                        <span class="error">*</span>
                                                        <input type="date" class="form-control" id="dob" value="" name="warrenty_to" placeholder="Date of Birth">
                                                        <div id="div6"></div>
                                                    </div>
                                                </div>
                                            </div><hr>
                                                   
                                            <div class="form-group">
                                                <div class = "row">
                                                   

                                                   
                                                </div>
                                            </div><hr>                                           

                                            <div class="form-group">
                                                <div class = "row">
                                                    <div class="col-md-4">
                                                        <label> Assigned To </label>
                                                        <?php
                                                $select_Emp_Name= "SELECT * FROM employee";
                                                $query_emp_name = mysqli_query($conn,$select_Emp_Name);
                                            ?>
                                             <select class="form-control" name="assigned_to" id = "assettype">
                                                    
                                                    <?php while($type_asset_type=mysqli_fetch_assoc($query_emp_name)) { ?>
                                            
                                                    <option value="<?php echo $type_asset_type['emp_id']?>"><?php echo $type_asset_type['first_name']?> </option>
                                            
                                                    <?php } ?>
                                                </select>
                                                        <!-- <span class="error">*</span>
                                                        <input type="text" class="form-control" id="designation" value="" name="designation" placeholder=""> -->
                                                        <div id="div9"></div>
                                                    </div>

                                                    
                                            </div><hr>

                                            <!-- <div class="form-group">
                                                <label> Skill Set </label>
                                                <textarea name="skillset" class="form-control" placeholder="Skill Set" ></textarea>
                                            </div> -->

                                            <div class="form-group">
                                                <label> Picture </label>
                                                <input type="file" name="uploadfile" id="uploadfile">
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-success"><i class="fa fa-plus-square" aria-hidden="true"></i>   Add</button>
                                            </div>

                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


<?php require_once("footer.php");?>

<?php include("add_form_validation.php");}?>