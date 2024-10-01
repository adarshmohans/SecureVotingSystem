<!DOCTYPE html>
<html lang="en" >
  <%@include file="database.jsp" %>
<head>
  <meta charset="UTF-8">
  <title>admin result status</title>
  
  
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
<legend style="font-size:51px;">Result Status</legend>

 <div class="form-group">
    <label class="col-md-4 control-label"for="dateofbirth">Date Of Election</label>
     <div class="col-md-4 addstud">
      <select class="form-control" id="electiondate">
                <option>select election date</option>
               <%
               ResultSet rs=stmt.executeQuery("select distinct electiondate from tbl_vote");
    		while(rs.next())
    		{
    			String electiondate=rs.getString("electiondate");
    			
    			%>
    			 <option><%=electiondate%></option>
    			
    			<% 
    		}
               
               
               
               %>
              </select>
        </div>
      </div>
<!-- Text input-->
<div class="form-group">
  <div class="col-md-12">
  <label class="col-md-4 control-label" for="textinput">Candidate:</label>  
  <div class="col-md-4">
  <select class="form-control" id="candidate">
                <option>select candidate</option>
               
              </select>
  <span class="help-block"> </span>  
  </div>
</div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Ward:</label>  
  <div class="col-md-4 addstud">
  <input id="ward" name="textinput" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Position:</label>  
  <div class="col-md-4 addstud">
  <input id="position" name="textinput"  class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Enter Key:</label>  
  <div class="col-md-4 addstud">
  <input id="key" name="textinput"  class="form-control input-md" required="" type="text">
  <input value="get result" id="result"  type="button">
  <span class="help-block"> </span>  
  </div>
</div>

<div class="form-group">
  <div class="col-md-12">
    <h2 id="score">Score</h2>
</div>

</fieldset>
</form>
       </div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

  
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	
	 $("#electiondate").change(function()
			{
		var electiondate=$("#electiondate").val();
		
		$.getJSON("getelectioncandidate.jsp?electiondate="+electiondate,function(json){
			
			
			var len=json.length;
			
			
			for(var i=0;i<len;i++){
				var candidate_id=json[i].candidate_id;
				var candidate_name=json[i].candidate_name;
				
			$("#candidate").append("<option value='"+candidate_id+"'>"+candidate_name+"</option>");
				
			}
		 });
		
		
			});
	 $("#candidate").change(function()
				{
			var candidate=$("#candidate").val();
			
			$.getJSON("getcandidatedetails.jsp?candidate="+candidate,function(json){
				
				
				var nomination_position=json[0].nomination_position;
				var ward=json[0].ward;
				
				$("#ward").val(ward);
				$("#position").val(nomination_position);
				
			 });
			
			
				});
	
	 
	 $("#result").click(function()
				{
			
			
			var electiondate=$("#electiondate").val();
			var candidate=$("#candidate").val();
			var key=$("#key").val();
			alert("getresult.jsp?date="+electiondate+"&userkey="+key+"&candidateid="+candidate);
			$.getJSON("getresult.jsp?date="+electiondate+"&userkey="+key+"&candidateid="+candidate,function(json){
				
				
				var msg=json[0].msg;
				if(msg=="success")
				{
					var result=json[0].result;
					$("#score").text(result);
				}
				else
				{
					alert(msg);
				}
				
			 });
			
			
				});
 });

</script>
   
</body>

</html>
