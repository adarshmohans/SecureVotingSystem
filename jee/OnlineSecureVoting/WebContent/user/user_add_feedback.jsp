<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>user add feedback</title>
  
  
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/custom.css">

  
</head>

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
    
        
        <form class="form-horizontal" action="UserAddFeedbackAction.jsp">
<fieldset>

<!-- Form Name -->
<legend style="font-size:51px;">Add Feedback</legend>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Candidate</label>  
  <div class="col-md-4">
  <select class="form-control"  name="candidate" id="candidate">
                <option value="">Select Candidate</option>
               
              </select>
  <span class="help-block"> </span>  
  </div>
</div>

<div class="row">
    <div class="form-group">
       <div class="col-md-12 textcenter">
    <div class="col-md-12">
     <textarea class="form-control areawidth" id="exampleFormControlTextarea1" name="feedbaack" id="feedbaack" rows="3"placeholder="Type your feedback:"></textarea>
     <span class="help-block"> </span>  
    </div>
      
    </div>
      <div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <a><input type="submit" name="singlebutton" class="btn btn-primary btn-lg add-btn" value="ADD"></a>
  </div>
</div>
  </div>

  </div>

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
      $(document).ready(function(){
    	
    	$("#candidate").html("<option>Select Candidate</option>");
    	 $.getJSON("GetCandidateName.jsp?",function(json){
    		var len=json.length;
    		
    		for(var i=0;i<len;i++){
    			var name=json[i].name;
    			
    		$("#candidate").append('<option>'+name+'</option>');
    		}
    	 });
    	 

      });
</script>
	


</body>

</html>
