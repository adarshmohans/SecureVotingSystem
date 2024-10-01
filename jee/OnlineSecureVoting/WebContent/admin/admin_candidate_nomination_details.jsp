<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>admin candidate nomination details</title>
  
  
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
<legend style="font-size:51px;">View User Deatils</legend>

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
                 <th scope="col"></th>
                
              </tr>
            </thead>
            <tbody id="box">
              <!-- <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="staff-photo" data-toggle="modal" data-target="#exampleModal"style="width:20%;"data-whatever="images/manager.png"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success">Approve</button><button type="button" class="btn btn-success">Reject</button></td>
                
              </tr>
              <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="staff-photo" data-toggle="modal" data-target="#exampleModal"style="width:20%;"data-whatever="images/manager.png"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success">Approve</button><button type="button" class="btn btn-success">Reject</button></td>
         
              </tr>
              <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="staff-photo" data-toggle="modal" data-target="#exampleModal"style="width:20%;"data-whatever="images/manager.png"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success">Approve</button><button type="button" class="btn btn-success">Reject</button></td>
            
                
              </tr>
               <tr>
               <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="staff-photo" data-toggle="modal" data-target="#exampleModal"style="width:20%;"data-whatever="images/manager.png"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success">Approve</button><button type="button" class="btn btn-success">Reject</button></td>
              </tr>
              <tr>
                <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="staff-photo" data-toggle="modal" data-target="#exampleModal"style="width:20%;"data-whatever="images/manager.png"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success">Approve</button><button type="button" class="btn btn-success">Reject</button></td>
               
                 
              </tr>
              <tr>
               <th scope="row">XXX</th>
                <td>abc</td>
                <td><img src="images/manager.png" class="staff-photo" data-toggle="modal" data-target="#exampleModal"style="width:20%;"data-whatever="images/manager.png"></td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td>@mdo</td>
                <td><button type="button" class="btn btn-success">Approve</button><button type="button" class="btn btn-success">Reject</button></td>
                
            
                
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
    	 
    	  $.getJSON("AdminGetCandidateDetails.jsp?",function(json){
      		var len=json.length;
      	
      		for(var i=0;i<len;i++){
      			var name=json[i].name;
      			var electiondate=json[i].electiondate;
      			var ward=json[i].str;
      			var address=json[i].address;
      			
      			var partydetails=json[i].partydetails;
      			
      			var position=json[i].position;
      			var partyicon=json[i].partyicon;
      			var nomination_id=json[i].nomination_id;
      			
      			$("#box").append(' <tr><th scope="row">'+name+'</th><td>'+electiondate+'</td><td><img src="../admin/'+partyicon+'" class="staff-photo" data-toggle="modal" data-target="#exampleModal"style="width:20%;"data-whatever="images/manager.png"></td><td>'+address+'</td><td>'+partydetails+'</td><td>'+ward+'</td><td>'+position+'</td><td><a href="UpdateNominationStatus.jsp?id='+nomination_id+'"<button type="button" class="btn btn-success">Approve</button><button type="button" class="btn btn-success">Reject</button></td></tr>');
      		}
      	 });
    	  
    	  
      });
    </script>



</body>

</html>
