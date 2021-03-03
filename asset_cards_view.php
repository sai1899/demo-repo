<?php


require_once('conf.php');
require_once("header.php");
require_once("a_sidebar.php");
 

$i=0;

?>
<div class="container-fluid">
<div class="card" style="margin-left:80px;margin-top:130px;margin-bottom:500px;width:350px;height:400px;">
    <div class="card-body" style="padding-left:20px;"><div class="container" style="padding-left:0px;">
        <h5 style="text-align: center;"><i class="fa fa-laptop" aria-hidden="true"></i>&nbsp IT Assets</h5>  
        <div style="width:320px; height:300px;overflow-y:scroll;">       

            <table class="table table-hover table-striped" style="font-size:12px;margin-left:0px;">
                <thead>
                    <tr style="padding-left:0px;">
                        <th>Type</th>
                        <th>Assigned</th>
                        <th>Available</th>
                        <th>Total</th>
                    </tr>
                </thead>

                <tbody>

                    <?php    
                        $select = "SELECT asset_id,asset_type,count(asset_type) as count from am_assets where asset_cat = '1'  group by asset_type";
                        $query = mysqli_query($conn,$select);

                        while($res=mysqli_fetch_assoc($query)) { 
                        $id = $res ['asset_type'];
                        

                        $select_type =   "SELECT asset_type from am_asset_types where id = $id and L_del='' ";
                        $query_type = mysqli_query($conn,$select_type);
                        $res_type=mysqli_fetch_assoc($query_type);

                        $assettype = $res_type ['asset_type'];
                        $count = $res ['count'];


                        $select_assign = "SELECT count(asset_type) as Acount from am_assign where asset_cat = '1' and asset_type = $id";
                        $query_assign = mysqli_query($conn,$select_assign);
                        $res_assign=mysqli_fetch_assoc($query_assign);
                        $Assigned_count = $res_assign ['Acount'];

                        if ($count > $Assigned_count)
                        {
                            $count = $count - $Assigned_count;
                        }
                        else
                        {
                            $count = $Assigned_count - $count;
                        }
                    ?>

                    <tr>
                        <td><?php echo $assettype;?></td>
                        <td><?php echo $Assigned_count;?></td>
                        <td><?php echo $count;?></td>
                        <td><?php echo  $count+$Assigned_count;?></td>
                    </tr>
   
                    <?php } ?>

                </tbody>
            </table>
        </div> 
    </div>
</div>
</div>


<div class="card" style="margin-left:20px;margin-top:130px;margin-bottom:00px;width:350px;height:400px;">
    <div class="card-body" style="padding-left:20px;"><div class="container" style="padding-left:0px;">
        <h5 style="text-align: center;"><i class="fa fa-industry" aria-hidden="true"></i>&nbsp Infrastructure Assets</h5>  
        <div style="width:320px; height:300px;overflow-y:scroll;" >       
            <table class="table table-hover table-striped" style="font-size:12px;margin-left:0px;">
                <thead>
                    <tr>
                        <th>Type</th>
                        <th>Assigned</th>
                        <th>Available</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php    
                        $select = "SELECT asset_type, asset_count from am_assets where asset_cat = '2' and L_del=''";
                        $query = mysqli_query($conn,$select);

                        while($res=mysqli_fetch_assoc($query)) { 
                        $id = $res ['asset_type'];

                        $select_type =   "SELECT asset_type from am_asset_types where id = $id ";
                        $query_type = mysqli_query($conn,$select_type);
                        $res_type=mysqli_fetch_assoc($query_type);

                        $assettype = $res_type ['asset_type'];
                        $count = $res ['asset_count'];

                        $select_assign = "SELECT count(asset_type) as Acount from am_assign where asset_cat = '2' and asset_type = $id";
                        $query_assign = mysqli_query($conn,$select_assign);
                        $res_assign=mysqli_fetch_assoc($query_assign);
                        $Assigned_count = $res_assign ['Acount'];
                    ?>


                    <tr>
                        <td><?php echo $assettype?></td>
                        <td><?php echo $Assigned_count?></td>
                        <td><?php echo $count?></td>
                        <td><?php echo  $count+$Assigned_count;?></td>
                    </tr>

                    <?php } ?>
                </tbody>
            </table>
        </div> 
    </div>
</div>
</div>


<div class="card" style="margin-left:20px;margin-top:130px;margin-bottom:00px;width:350px;height:400px;">
    <div class="card-body" style="padding-left:20px;"><div class="container" style="padding-left:0px;">
        <h5 style="text-align: center;"><i class="fa fa-sticky-note" aria-hidden="true"></i>&nbsp Other Assets</h5>  
        <div style="width:320px; height:300px;overflow-y:scroll;">       
            <table class="table table-hover table-striped " style="font-size:12px;margin-left:0px;">
                <thead>
                    <tr>
                        <th>Type</th>
                        <th>Assigned</th>
                        <th>Available</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php    
                        $select = "SELECT asset_type, asset_count from am_assets where asset_cat = '3' and L_del=''";
                        $query = mysqli_query($conn,$select);

                        while($res=mysqli_fetch_assoc($query)) { 
                        $id = $res ['asset_type'];

                        $select_type =   "SELECT asset_type from am_asset_types where id = $id ";
                        $query_type = mysqli_query($conn,$select_type);
                        $res_type=mysqli_fetch_assoc($query_type);

                        $assettype = $res_type ['asset_type'];
                        $count = $res ['asset_count'];

                        $select_assign = "SELECT count(asset_type) as Acount from am_assign where asset_cat = '3' and asset_type = $id";
                        $query_assign = mysqli_query($conn,$select_assign);
                        $res_assign=mysqli_fetch_assoc($query_assign);
                        $Assigned_count = $res_assign ['Acount'];
                    ?>

                    <tr>
                        <td><?php echo $assettype?></td>
                        <td><?php echo $Assigned_count?></td>
                        <td><?php echo $count?></td>
                        <td><?php echo  $count+$Assigned_count;?></td>
                    </tr>

                    <?php } ?>
                </tbody>
            </table>
        </div> 
    </div>
</div>
</div>
                        </div>

<?php require_once("footer.php"); ?>