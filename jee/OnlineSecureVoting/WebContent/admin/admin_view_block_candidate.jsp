<!DOCTYPE html>

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>admin view& block candidate</title>
  
  
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
          <form class="form-horizontal">
            <fieldset>

<!-- Form Name -->
<legend style="font-size:51px;">View&Block Candidate</legend>

<!-- Text input-->
          <table class="table table-bordered table-responsive get-table">
            <thead>
              <tr>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Phoneno</th>
                <th scope="col">Party</th>
                <th scope="col">Party Image</th>
                <th scope="col">Photo</th>
                 <th scope="col">Background Details</th>
                <th scope="col">Ward</th>
                 <th scope="col"></th>
                <th scope="col"></th>
                
              </tr>
            </thead>
            <tbody id="box">
             <!--  <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td>10</td>
                <td>@mdo</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>10</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Block</a></button></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Edit</a></button></td>
                
         
              </tr>
              <tr>
                <th scope="row">2</th>
               <td>abc</td>
                <td>10</td>
                <td>@mdo</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>10</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Block</a></button></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Edit</a></button></td>
         
              </tr>
              <tr>
                <th scope="row">3</th>
               <td>abc</td>
                <td>10</td>
                <td>@mdo</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>10</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Block</a></button></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Edit</a></button></td>
            
                
              </tr>
               <tr>
                <th scope="row">4</th>
                <td>abc</td>
                <td>10</td>
                <td>@mdo</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>10</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Block</a></button></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Edit</a></button></td>
           
              </tr>
              <tr>
                <th scope="row">5</th>
               <td>abc</td>
                <td>10</td>
                <td>@mdo</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>10</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Block</a></button></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Edit</a></button></td>
               
                 
              </tr>
              <tr>
                <th scope="row">6</th>
               <td>abc</td>
                <td>10</td>
                <td>@mdo</td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:20%;"></td>
                <td>10</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Block</a></button></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Edit</a></button></td>
                
            
                
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
    	
    	 
    	 $.getJSON("AdminViewBlockCandidateAction.jsp?",function(json){
    		
    		
    		var len=json.length;
    		
    		for(var i=0;i<len;i++){
    			var name=json[i].name;
    			
    			var mailid=json[i].mailid;
    			var phoneno=json[i].phoneno;
    			var backdetails=json[i].backdetails;
    			var partydetails=json[i].partydetails;
    			var ward=json[i].ward;
    			var icon=json[i].icon;
    			var image=json[i].image;
    			$("#box").append('<tr><th scope="row">'+name+'</th><td>'+mailid+'</td><td>'+phoneno+'</td><td>'+partydetails+'</td><td><img src="'+icon+'" class="staff-photo" data-toggle="modal" data-target="#exampleModal" style="width:20%;"data-whatever="images/manager.png"></td><td><img src="../admin/'+image+'" class="staff-photo" data-toggle="modal" data-target="#exampleModal"style="width:20%;" data-whatever="images/manager.png"></td><td>'+backdetails+'</td><td>'+ward+'</td><td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Block</a></button></td><td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Edit</a></button></td></tr>');
    			
    		}
    	 });
      });
    </script>

</body>

</html>
