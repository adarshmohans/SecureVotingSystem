<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>admin add candidate</title>
  
  
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/custom.css">

  
</head>

<body class="adminbody" style="background: url('images/bg4.jpg') no-repeat; background-size: cover;">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"> <img alt="Brand" src="images/vote.png"></a>
          </div>
          <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
            <ul class="nav navbar-nav navbar-right">
                 <li><a href="admin_add_candidate.jsp">Add Candidate</a></li>
                  <li><a href="admin_view_block_candidate.jsp">View Candidate</a></li>
                  <li><a href="admin_view_user_details.jsp">User Details</a></li>
                  <li><a href="admin_candidate_nomination_details.jsp">Nomination Details</a></li>
                  <li><a href="admin_result_status.jsp">Result</a></li>
                  <li><a href="admin_add_election_date_time.jsp">Add Election Details</a></li>
                  <li><a href="admin_change_password.jsp">Change Passsword</a></li>
                  <li><a href="admin_add_notice.jsp">Add Notice</a></li>
                  <li><a href="admin_home.jsp">Logout</a></li>
            </ul>
            
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
        <div class="col-md-12" style="text-align: center;">
          <form class="form-horizontal" action="AddCandidateAction.jsp" method="post" enctype="multipart/form-data">
            <fieldset>

<!-- Form Name -->
<legend style="font-size:51px;">Add Candidate</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Name</label>  
  <div class="col-md-4 addstud">
  <input id="textinput" name="name" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Gender</label>  
  <div class="col-md-4 addstud">
  <input id="textinput" name="gender" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">DOB</label>  
  <div class="col-md-4 addstud">
  <input id="textinput" name="dob"  class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Email</label>  
  <div class="col-md-4 addstud">
  <input id="textinput" name="emailid"  class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

  <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Phoneno</label>  
  <div class="col-md-4 addstud">
  <input id="textinput" name="phoneno" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Background Details</label>  
  <div class="col-md-4 addstud">
  <input id="textinput" name="backdetails" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Party Details</label>  
  <div class="col-md-4 addstud">
  <input id="textinput" name="partydetails" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Ward</label>  
  <div class="col-md-4 addstud">
  <input id="textinput" name="ward" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
<label class="col-sm-4 control-label" for="formGroupInputSmall">Party icon</label>
<div class="col-sm-4 pic-up">
              <input type="file" onchange="readURL(this);" name="icon">
                <img id="blah" src="http://placehold.it/180" alt="your image">
            </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <a><input type="submit" id="singlebutton" name="singlebutton" class="btn btn-primary btn-lg add-btn" value="ADD"></a>
  </div>
</div>

</fieldset>
</form>
       </div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

  
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script  src="js/index.js"></script>




</body>

</html>
