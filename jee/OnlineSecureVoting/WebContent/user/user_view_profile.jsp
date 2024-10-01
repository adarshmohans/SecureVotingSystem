<!DOCTYPE html>
    <%@include file="database.jsp" %>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>user view profile</title>
  
  
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/custom.css">

  
</head>
<%
String name="",mailid="",phoneno="",dob="",gender="",address="",image="",fathername="",ward="",adharno="",wardno="",userid="";

	 userid=session.getAttribute("user_id").toString();
	ResultSet res=stmt.executeQuery("select * from tbl_user where tbl_user_id='"+userid+"'");


	if(res.next()){
	
	
	 name=res.getString("user_name");
	 mailid=res.getString("user_email");
	 phoneno=res.getString("user_phoneno");
	 dob=res.getString("user_dob");
	 gender=res.getString("user_gender");
	 address=res.getString("user_address");
	 image=res.getString("user_photo");
	 fathername=res.getString("user_fathername");
	 ward=res.getString("user_ward");
	 adharno=res.getString("user_adharno");
	 wardno=res.getString("wardno");
	 
	 
	}



%>
<body class="adminbody" style="background: url('images/bg10.jpg') no-repeat; background-size: cover;">
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
                 <li><a href="user_view_candidate_details.jsp">Candidate Details</a></li>
                  <li><a href="user_view_candidate_details.jsp">Voting</a></li>
                  <li><a href="user_view_profile.jsp">View Profile</a></li>
                  <li><a href="user_add_feedback.jsp">Add Feedback</a></li>
                  <li><a href="user_view_feedback.jsp">View Feedback</a></li>
                  <li><a href="admin_home.jsp">Logout</a></li>
            </ul>
            
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
        <div class="col-md-12" style="text-align: center;">
          <form class="form-horizontal">
            <fieldset>

<!-- Form Name -->
<legend style="font-size:51px;">Profile</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Name</label>  
  <div class="col-md-4 canprofile">
  <%= name%>
  <span class="help-block"></span>  
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">DOB</label>  
  <div class="col-md-4 canprofile">
   <%= dob%>
  <span class="help-block"> </span>  
  </div>
  <div class="form-group">
    <div class="col-md-4">
        <img src="../user/<%=image %>" class="img-fluid img-width" alt="Responsive image"style="width:20%;">
  <span class="help-block"> </span>  
  </div>
</div>
</div>

<!-- Text input-->
<div class="form-group">
     <div class="col-md-12">
  <label class="col-md-4 control-label" for="textinput">SEX</label>  
  <div class="col-md-4 canprofile">
   <%=gender %>
  <span class="help-block"> </span>  
  </div>
</div>
</div>

  <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">ADDRESS</label>  
  <div class="col-md-4 canprofile">
    <%= address%>
  <span class="help-block"> </span>  
  </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="textinput">Phone No.</label>  
  <div class="col-md-4 canprofile">
     <%=phoneno %>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Email</label>  
  <div class="col-md-4 canprofile">
   <%= mailid%>
  <span class="help-block"> </span>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Father/spouse</label>  
  <div class="col-md-4 canprofile">
  <%=fathername%>
  <span class="help-block"> </span>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Ward</label>  
  <div class="col-md-4 canprofile">
   <%= ward%>
  <span class="help-block"> </span>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Ward No:</label>  
  <div class="col-md-4 canprofile">
  <%= wardno%>
  <span class="help-block"> </span>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Aadhar No.</label>  
  <div class="col-md-4 canprofile">
  <%= adharno%>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Button -->
<!-- <div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <a><input type="submit" name="singlebutton" class="btn btn-primary btn-lg add-btn" value="EDIT"></a>
  </div>
</div> -->

</fieldset>
</form>
       </div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

  
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script  src="js/index.js"></script>




</body>

</html>
