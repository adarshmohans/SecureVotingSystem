<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="database.jsp" %>
  
  <%
  	try{
  		String date=request.getParameter("dateofelection");
  		System.out.println(date);
  		String fromtime=request.getParameter("fromtime");
  		String totime=request.getParameter("totime");
  		String sql="insert into admin_addelection(addelection_date,addelection_fromtime,addelection_totime) value('"+date+"','"+fromtime+"','"+totime+"')";
  		stmt.executeUpdate(sql);
  		
  			%><script type="text/javascript">
  			alert("Election details added successfully");
  			window.location.href="admin_add_election_date_time.jsp";
  			
  			</script><%
  	
  		
  	}catch(Exception e){
  		e.printStackTrace();
  	}
   
  %>