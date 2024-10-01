<!DOCTYPE html>
<%@include file="database.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>user voting page</title>
  
  
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
      
     <%


String userid=session.getAttribute("user_id").toString();


DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
Date date = new Date();
System.out.println(dateFormat.format(date));	 
String date1=dateFormat.format(date);
System.out.println(date1);
System.out.println("select * from admin_addelection where addelection_date='"+date1+"'");
ResultSet rs1=stmt1.executeQuery("select * from admin_addelection where addelection_date='"+date1+"'");
if(rs1.next())
{
	ResultSet rs=stmt.executeQuery("select * from tbl_vote where tbl_user_id='"+userid+"' && electiondate='"+date1+"'");
	if(rs.next())
	{
		
	}
	else
	{
		%>
		   <div class="col-md-12" style="text-align: center;">
          <form class="form-horizontal">
            <fieldset>

<!-- Form Name -->
<legend style="font-size:51px;">Ready to vote</legend>
 <div class="col-md-12"style="text-align: end;"><h3>Total Priority:</h3><h3 id="count">100</h3></div>
<!-- Text input-->
<div id="box">
<!-- <div class="form-group">
  <label class="col-md-2 control-label" for="textinput" style="font-size:20px;">Candidate 1</label>  
  <div class="col-md-2 addstud">
    <img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:40%;">
  <span class="help-block"> </span>  
  </div>
  <div class="col-md-2 addstud">
    <img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:40%;">
  </div>
  <div class="col-md-2 addstud">
  <input id="textinput" name="textinput" class="form-control input-md" required="" type="text" placeholder="Enter Priority">
  </div>
  <div class="col-md-2">
   <button id="singlebutton" name="singlebutton" class="btn btn-primary btn-lg vote-btn">VOTE</button>
 </div>
</div> -->
</div>
<!-- Text input-->
<!-- <div class="form-group">
  <label class="col-md-2 control-label" for="textinput"style="font-size:20px;">Candidate 2</label>  
  <div class="col-md-2 addstud">
    <img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:40%;">
  <span class="help-block"> </span>  
  </div>
  <div class="col-md-2 addstud">
    <img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:40%;">
  </div>
  <div class="col-md-2 addstud">
  <input id="textinput" name="textinput" class="form-control input-md" required="" type="text" placeholder="Enter Priority">
  </div>
  <div class="col-md-2">
   <button id="singlebutton" name="singlebutton" class="btn btn-primary btn-lg vote-btn">VOTE</button>
 </div>
</div>

Text input
<div class="form-group">
  <label class="col-md-2 control-label" for="textinput"style="font-size:20px;">Candidate 3</label>  
  <div class="col-md-2 addstud">
    <img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:40%;">
  <span class="help-block"> </span>  
  </div>
  <div class="col-md-2 addstud">
    <img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:40%;">
  </div>
  <div class="col-md-2 addstud">
  <input id="textinput" name="textinput" class="form-control input-md" required="" type="text" placeholder="Enter Priority">
  </div>
  <div class="col-md-2">
   <button id="singlebutton" name="singlebutton" class="btn btn-primary btn-lg vote-btn">VOTE</button>
 </div>
</div> -->

<legend style="font-size:35px;">Page Review</legend>
<!-- Text input-->
<div class="form-group">

<%
String nomination_name="";
ResultSet rs2=stmt2.executeQuery("SELECT tbl_candidate_id ,sum(AES_DECRYPT(priority,'123')) from tbl_vote where electiondate='"+date1+"' group by tbl_candidate_id order by sum(AES_DECRYPT(priority,'123')) desc");
while(rs2.next())
{
	String candidateid=rs2.getString("tbl_candidate_id");
	ResultSet rs3=stmt3.executeQuery("select * from tbl_nomination where tbl_candidate_id='"+candidateid+"'");
	if(rs3.next())
	{
		 nomination_name=rs3.getString("nomination_name");
	}
	%>
	 <label class="col-md-2 control-label" for="textinput" style="font-size:20px;"><%=nomination_name%></label>  
	
	<% 
}


%>

 
  
</div>




</fieldset>
</form>
       </div>
		
		<% 
	}
}
else
{
	
}








%> 
      
      
     

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
      var count;
      $(document).ready(function(){
    	
    	
    	 $.getJSON("UserVotingAction.jsp?",function(json){
    		var len=json.length;
    		 count=len*2;
    		//alert(count);
    		$("#count").text(count);
    		for(var i=0;i<len;i++){
    			var name=json[i].name;
    			var image=json[i].image;
    			var icon=json[i].icon;
    			var candidateid=json[i].candidateid;
    			
    			$("#box").append('<div class="form-group"><label class="col-md-2 control-label" for="textinput" style="font-size:20px;">'+name+'</label> <div class="col-md-2 addstud"><img src="../admin/'+image+'" class="img-fluid img-width" alt="Responsive image" style="width:40%;"><span class="help-block"> </span></div><div class="col-md-2 addstud"><img src="../admin/'+icon+'" class="img-fluid img-width" alt="Responsive image" style="width:40%;"></div><div class="col-md-2 addstud"><input id="pri'+candidateid+'" name="textinput" class="form-control input-md" required="" type="text" placeholder="Enter Priority"></div><div class="col-md-2"><button id="'+candidateid+'" name="singlebutton" class="btn btn-primary btn-lg vote-btn">VOTE</button></div>');
    		}
    	 });
    	 
    	 
    	   
         $(document).on("click",".vote-btn",function()
       		  {
       	  			var id=$(this).attr('id');
       	  			
       	  			var priority=$("#pri"+id+"").val();
       	  			var count=$("#count").text();
       	  			
       	  		 	$.getJSON("voteaction.jsp?id="+id+"&priority="+priority+"&count="+count,function(json)
       	  		 			{
       	  				var msg=json[0].msg;
       	  				alert(msg);
       	  			if(confirm('Are you continue ?')) 
       	  			{
       	  				var count1=json[0].count;
	  					count=count1;
	    				alert(count);
	    				$("#count").text(count);
       	  	         	//window.location.href="user_voting_page.jsp";
       	  	    		
       	  	    	}
       	  			else
       	  			{
       	  				window.location.href="user_login.jsp";
       	  			}
       	  				
       	  					
       	  					
       		  				}); 
  
       		  });

      });
</script>



</body>

</html>
