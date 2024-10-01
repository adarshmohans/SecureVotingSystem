<!DOCTYPE html>
 <%@include file="database.jsp" %>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>candidate view notice</title>
  
  
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/custom.css">

  
</head>

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
<legend style="font-size:51px;">Notice</legend>

<!-- Text input-->
          <table class="table table-bordered table-responsive get-table">
            <thead>
              <tr>
                <th scope="col">Notice</th>
                <th scope="col">Image</th>
                <th scope="col">Document</th>
                <th scope="col">Date</th>    
              </tr>
            </thead>
            <tbody id="box">
             <!--  <tr>
                <th scope="row">XXX</th>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:10%;"></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Download file</a></button></td>
                <td>@mdo</td>
              </tr>
              <tr>
                 <th scope="row">XXX</th>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:10%;"></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Download file</a></button></td>
                <td>@mdo</td>
         
              </tr>
              <tr>
                 <th scope="row">XXX</th>
               <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:10%;"></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Download file</a></button></td>
                <td>@mdo</td>
                
              </tr>
               <tr>
                 <th scope="row">XXX</th>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:10%;"></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Download file</a></button></td>
                <td>@mdo</td>
              </tr>
              <tr>
                 <th scope="row">XXX</th>
                <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:10%;"></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Download file</a></button></td>
                <td>@mdo</td>
               
                 
              </tr>
              <tr>
                 <th scope="row">XXX</th>
               <td><img src="images/manager.png" class="img-fluid img-width" alt="Responsive image" style="width:10%;"></td>
                <td><button type="button" class="btn btn-success"><a href="staff_subject_details.jsp">Download file</a></button></td>
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
    	
    	
    	 $.getJSON("CandidateViewNoticeAction.jsp?",function(json){
    		var len=json.length;
    		
    		for(var i=0;i<len;i++){
    			var notice=json[i].notice;
    			var image=json[i].image;
    			var document=json[i].document;
    			var date=json[i].date;
    			
    			$("#box").append('<tr><th scope="row">'+notice+'</th><td><img src="../admin/'+image+'"" class="img-fluid img-width" alt="Responsive image" style="width:10%;"></td><td><a href="../staff/'+document+'" target="_blank" download><button class="btn btn-primary" type="button" id="dwnldfile">Download file</button></a><td>'+date+'</td></tr>');
    		}
    	 });

      });
</script>

</body>

</html>
