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
<div class="login-form">
    <form method="post" action="loginaction.jsp">
        
        <h2 class="text-center">USER</h2>   
        <div class="form-group">
        	<div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="voerid" placeholder="voterID" required="required">				
            </div>
        </div>
		<div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" name="password" placeholder="Password" required="required">				
            </div>
        </div>        
        <div class="form-group">
           <button type="submit" class="btn btn-primary login-btn btn-block">LOGIN</button>
            <a href="user_signup.jsp" class="user-log"> <h3 class="text-center">SIGN UP</h3> </a>
        </div>      
    </form>

</div>

 <script src="js/jquery-3.2.1.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
</body>
</html>     