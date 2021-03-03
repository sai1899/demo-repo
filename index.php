<?php include("header.php"); ?>


<div id="hero_banner">
    <div class="background-content row">
        <div class="reg_form text-center px-2 col-5">
            <!-- form that will be show on the right -->

            <h3 class="" style="
                    font-size: 30px; 
                    ">
                    <span style=" font-family: Open Sans, sans-serif;" >Login</span> 
                <div class="logo">
                    <!-- <img src="tlogo.png" style="width:60px; height:60px" class="img-fluid">       -->
                    <h1>Surabhi Dairy</h1>                                          
                </div>
            </h3>
            <form method="POST" onsubmit = "return LoginValidation()" action="login_check.php">
            <?php if (isset($_GET['msg']) && $_GET['msg']==1){ ?>
                <p><span style=" font-family: Abel, sans-serif; color:red" > Invalid Password</span></p>
                <?php } ?>

                <?php if (isset($_GET['msg']) && $_GET['msg']==2){ ?>
                <p><span style=" font-family: Abel, sans-serif; color:red" > Invalid Email Id</span></p>
                <?php } ?>
            
                <div class="form-group col-9 mx-auto py-2">
                    <label for="usernameofEmployee"><span style=" font-family: Open Sans, sans-serif;" >Email </span></label>
                    <input style="width:13vw; box-sizing: border-box;" type="text" id = "loginemail" name="u_email" value=""  placeholder="Email" class="input-box">
                    <div id = "emaildiv"></div>
                </div>

                <div class="form-group  col-9 mx-auto py-2">
                    <label for="passwordofEmployee"><span style=" font-family: Open Sans, sans-serif;" >Password </span></label>
                    
                    <input style="width:13vw;" type="password" id = "loginpass" name="u_pass" value=""  placeholder="Password" class="input-box">
                    <div id = "passdiv"></div>
                </div>
                <button  type="submit" class="submit-button"><i class="fa fa-sign-in" aria-hidden="true"></i><span style=" font-family: Open Sans, sans-serif;" >  Login</span> </button><br><br>
                <div class="text-center"><span style=" font-family: Open Sans, sans-serif;" >New User ? </span>
                <a href="registration_form.php"><span style=" font-family: Open Sans, sans-serif;" >Register Here</span></a></div>

            </form>



        </div>

    </div>

</div>

</div>

</body>

</html>

<!-- <?php include("form_validations.php");?> -->
