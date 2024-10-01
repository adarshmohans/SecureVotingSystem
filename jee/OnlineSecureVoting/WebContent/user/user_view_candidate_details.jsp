<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>user view candidate details</title>
  
  
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
                  <li><a href="user_voting_page.jsp">Voting</a></li>
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
<legend style="font-size:51px;">Candidate Deatils</legend>

<!-- Text input-->
          <table class="table table-bordered table-responsive get-table">
            <thead>
              <tr>
                <th scope="col">Name</th>
                <th scope="col">Election Date</th>
                <th scope="col">Icon</th>
                <th scope="col">Background Details</th>
                 <th scope="col">Party</th>
                 <th scope="col">Ward</th>
                <th scope="col">Positions of rep</th>
                 
                
              </tr>
            </thead >
            <tbody id="box">
              <!-- <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                
                
              </tr>
              <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                
         
              </tr>
              <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                
            
                
              </tr>
               <tr>
               <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                
              </tr>
              <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                
               
                 
              </tr>
              <tr>
               <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
               
                
            
                
              </tr> -->
            </tbody>
          </table>

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
     
      $(document).ready(function(){
    	
    	 
    	 $.getJSON("UserGetCandidateDetails.jsp?",function(json){
    		
    		
    		var len=json.length;
    		
    		
    		for(var i=0;i<len;i++){
    			var name=json[i].name;
    			var electiondate=json[i].electiondate;
    			var position=json[i].position;
    			
    			var backdetails=json[i].address;
    			var partydetails=json[i].partydetails;
    			var ward=json[i].str;
    			var icon=json[i].partyicon;
    			var image=json[i].image;
    		
    			$("#box").append('<tr><th scope="row">'+name+'</th><td>'+electiondate+'</td><td><img src="../admin/'+icon+'" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td><td>'+backdetails+'</td><td>'+partydetails+'</td><td>'+ward+'</td><td>'+position+'</td></tr>');
    		}
    	 });
      });
    </script>
	



</body>

</html>
