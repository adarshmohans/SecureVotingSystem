<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>user view feedback</title>
  
  
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
                  <li><a href="user_home.jsp">Logout</a></li>
            </ul>
            
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
  <div class="col-md-12" style="text-align: center;">
    <legend style="font-size:51px;">FeedBack</legend>
        
<div class="col-md-12"style="margin-top:5%;margin-bottom:30px;">
<div class="col-md-12"style="margin-bottom:30px;">
<div class="form-group">
  <label class="col-md-2 control-label" for="textinput">Search</label>  
  <div class="col-md-8">
  <input id="word" name="word" class="form-control input-md" required="" type="text"placeholder="Type here">
  <span class="help-block"> </span>  
  </div>
   <div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <a><input type="submit" name="singlebutton" id="box1" class="btn btn-primary btn-lg add-btn" value="Search"></a>
  </div>
</div>
</div>
</div>
  <div class="col-md-4 divs">
    <h2>CANDIDATE</h2>
  </div>
    <div class="col-md-4 divs">
    <h2>FEEDBACK</h2>
  </div>
    <div class="col-md-4 divs">
    <h2>USER</h2>
  </div>
</div>
<div id="box">
<!-- <div class="col-md-12">
  <div class="col-md-4">
    <h2>dsfrgfdg</h2>
  </div>
    <div class="col-md-4">
    <h2>rsgfrgdfrg</h2>
  </div>
    <div class="col-md-4">
    <h2>dfrgdfyhgtg</h2>
  </div>
</div> -->
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
    	  $("#box1").click(function(){
    
    	 var word=$("#word").val();
    
    	 $.getJSON("UserViewFeedback.jsp?word="+word,function(json){
    		var len=json.length;
    		 
    		
    	
    		for(var i=0;i<len;i++){
    			var feedback=json[i].feedback;
    			var candidatename=json[i].candidatename;
    			var username=json[i].username;
    			
    			$("#box").append('<div class="col-md-12"><div class="col-md-4"><h2>'+candidatename+'</h2></div><div class="col-md-4"><h2>'+feedback+'</h2></div><div class="col-md-4"><h2>'+username+'</h2></div></div>');
    			
    		}
    	 });
		  
    	  });
    	 
      });
    	 </script>




</body>

</html>
