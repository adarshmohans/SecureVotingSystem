<!DOCTYPE html>
 <%@include file="database.jsp" %>

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>candidate add nomination details</title>
  
  
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/custom.css">

  
</head>
<%

	String name="",dob="",backgrounddetails="",partydetails="",ward="",partyicon="",date="";

String id=session.getAttribute("idkey").toString();
System.out.println("session id="+id);
	ResultSet res=stmt.executeQuery("select * from tbl_candidate where tbl_candidate_id='"+id+"'");

			
	ResultSet res1=stmt1.executeQuery("select * from admin_addelection where status='0'");
	if(res1.next()){
		date=res1.getString("addelection_date");
		
		
	}
	if(res.next()){
		 name=res.getString("candidate_name");
		 dob=res.getString("candidate_dob");
		 backgrounddetails=res.getString("candidate_backgrounddetails");
		 partydetails=res.getString("candidate_partydetails");
		 ward=res.getString("candidate_ward");
		 partyicon=res.getString("candidate_partyicon");
		
		
	}
	


%>
<body class="adminbody" style="background: url('images/bg8.jpeg') no-repeat; background-size: cover;">
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
          <form class="form-horizontal" action="AddNominationDetailsAction.jsp" method="post" enctype="multipart/form-data">
            <fieldset>

<!-- Form Name -->
<legend style="font-size:51px;">Add Nomination Details</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Election Date:</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="electiondate" value='<%=date %>' class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Name</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="name" value='<%=name %>' class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">DOB</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="dob" value='<%=dob %>' class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
   <div class="col-md-4">
   	<img src="../admin/<%=partyicon %>" class="img-fluid img-width" alt="Responsive image" style="width:20%;">
   </div>
      </div>
    <div class="form-group">
       <label class="col-md-4 control-label" for="textinput">Address</label>  
        <div class="col-md-4 caninput">
          <textarea class="form-control areawidth" name="backgrounddetails" id="exampleFormControlTextarea1" rows="4"><%=backgrounddetails %></textarea>
      </div>  
      	<label class="col-sm-2 control-label" for="formGroupInputSmall">Image</label>
		<div class="col-sm-2 pic-up">
              <input type="file" onchange="readURL(this);" name="image" value="image">
            </div> 
    </div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">PARTY</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="partydetails" value='<%=partydetails %>' class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

  <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Ward name</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="ward" value='<%=ward %>' class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Ward number</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="wardno" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Nomination position</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="position" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Positions Of Responsibilty(Yes/No)</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="responsibility" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">(If Yes)Specify</label>  
  <div class="col-md-4 caninput">
  <input id="textinput" name="specify" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <a><input type="submit" name="singlebutton" class="btn btn-primary btn-lg add-btn" value="SAVE"></a>
  </div>
</div>

</fieldset>
</form>
       </div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

  
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script  src="js/index.js"></script>

	<script type="text/javascript">
      function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    

</body>

</html>
