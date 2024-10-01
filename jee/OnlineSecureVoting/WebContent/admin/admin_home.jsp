<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>admin home</title>
  
  
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/custom.css">

  
</head>

<body style="background: url('images/bg5.jpg') no-repeat; background-size: cover;">
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
        <div class="col-md-12" style="margin-top:12%">
    <h1 class="page_title_h1">ADMIN PANEL</h1>
  <p class="page_title_p">Online Voting System</p>
  </div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

  
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script  src="js/index.js"></script>




</body>

</html>
