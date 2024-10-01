<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LOGIN</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<link rel="stylesheet" href="css/materialdesignicons.min.css">

</head>
<body style="background: url('images/india_votes1.jpg') no-repeat; background-size: cover;">
<div class="login-form sign">
    <form action="registeraction.jsp" method="post" enctype="multipart/form-data">
        
        <h2 class="text-center">CREATE ACCOUNT</h2>   
        <div class="form-group">
        	<div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="name" placeholder="Name" required="required">				
            </div>
        </div>
		 <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="dob" placeholder="DOB" required="required">             
            </div>
        </div>
		<div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="gender" placeholder="gender" required="required">             
            </div>
        </div>
		 <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="address" placeholder="Address" required="required">             
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="phoneno" placeholder="Phone No." required="required">             
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="email" placeholder="Email" required="required">             
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="fathername" placeholder="Father/spouse" required="required">             
            </div>
        </div>
		<div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="text" class="form-control" name="ward" placeholder="ward" required="required">				
            </div>
        </div> 
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="text" class="form-control" name="wardno" placeholder="ward No" required="required">				
            </div>
        </div> 
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="text" class="form-control" name="adharno" placeholder="Aadhar NO" required="required">             
            </div>
        </div>   
  <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <label for="files" style="color: white;" class="btn">please browse image</label>
      <input id="files" name="imagepath" style="visibility:hidden;" type="file">         
            </div>
        </div> 		
        <div class="form-group">
            <button type="submit" class="btn btn-primary login-btn btn-block" id="add">SIGN UP</button>
            
        </div>      
    </form>

</div>

 <script src="js/jquery-3.2.1.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
 <script type="text/javascript">
   
         
           $(document).ready(function()
        		   {
        	   $("#add").click(function()
        			   {
        		   if(document.getElementById("files").files.length == 0)
        			{
        			alert("please browseimage");
        			return false;
        			}
        			else
        			{
        				return true;
        			}
        			   });
        		   });
    </script>
</body>
</html>     