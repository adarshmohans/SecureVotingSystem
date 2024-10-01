<!DOCTYPE html>
 <%@include file="database.jsp" %>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>candidate view profile</title>
  
  
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/custom.css">

  
</head>
<%
	String name="",id="",dob="",address="",partydetails="",wardname="",icon="",image="",wardno="",position="";
	ResultSet res,res2;
	id=session.getAttribute("idkey").toString();
	System.out.println("id");
	
	res=stmt.executeQuery("select * from tbl_candidate where tbl_candidate_id='"+id+"'");
	res2=stmt1.executeQuery("select * from tbl_nomination where tbl_candidate_id='"+id+"'");
	if(res.next()){
		name=res.getString("candidate_name");
		dob=res.getString("candidate_dob");
		address=res.getString("candidate_backgrounddetails");
		partydetails=res.getString("candidate_partydetails");
		wardname=res.getString("candidate_ward");
		icon=res.getString("candidate_partyicon");
		image=res.getString("candidate_image");
		
	}
	if(res2.next()){
		wardno=res2.getString("nomination_wardno");
		position=res2.getString("nomination_position");
	}
	


%>
<body class="adminbody" style="background: url('images/bg6.jpg') no-repeat; background-size: cover;">
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
                 <li><a href="candidate_add_nomination_details.jsp">Add Nomination Details</a></li>
                  <li><a href="candidate_get_nomination_details.jsp">Get Nomination Details</a></li>
                  <li><a href="candidate_view_profile.jsp">View Profile</a></li>
                  <li><a href="candidate_view_notice.jsp">View Notice</a></li>
                  <li><a href="candidate_home.jsp">Logout</a></li>
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
   <%= name %>
  <span class="help-block"></span>  
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">DOB</label>  
  <div class="col-md-4 canprofile">
  <%= dob %>
  <span class="help-block"> </span>  
  </div>
  	<div class="col-sm-2">
              <img src="../admin/<%=icon %>" style="width:50%;">
            </div>
		<div class="col-sm-2">
              <img src="../admin/<%=image %>"style="width:30%;">
            </div>
            </div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Address</label>  
  <div class="col-md-4 canprofile">
  <%= address %>
  <span class="help-block"> </span>  
  </div>
  </div>

<!-- Text input-->
<div class="form-group">
     <div class="col-md-12">
  <label class="col-md-4 control-label" for="textinput">PARTY</label>  
  <div class="col-md-4 canprofile">
  <%= partydetails %>
  <span class="help-block"> </span>  
  </div>
</div>
</div>

  <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Ward name</label>  
  <div class="col-md-4 canprofile">
 <%= wardname %>
  <span class="help-block"> </span>  
  </div>
  </div>
  <div class="form-group">
    <label class="col-md-4 control-label" for="textinput">Ward no.</label>  
  <div class="col-md-4 canprofile">
 <%= wardno %>
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Position</label>  
  <div class="col-md-4 canprofile">
  <%= position %>
  <span class="help-block"> </span>  
  </div>
</div>




<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary btn-lg add-btn">EDIT</button>
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
