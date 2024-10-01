<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="database.jsp" %>
   <%
   try{
	   String currentpassword=request.getParameter("currentpassword");
	   String newpassword=request.getParameter("newpassword");
	   String confirmpassword=request.getParameter("confirmpassword");
	   if(newpassword.equals(confirmpassword)){
	  		 stmt.executeUpdate("update tbl_admin set admin_password='"+newpassword+"' where admin_password='"+currentpassword+"'");
	   
	  		%>   
	  	  
			   <script type="text/javascript">
			   alert(" new password updated successfully");
			   window.location.href="admin_change_password.jsp";
			   </script>
			<%
	   }	 
	  	else{
		%>   
	  
		   <script type="text/javascript">
		   alert("please re-enter your new password");
		   window.location.href="admin_change_password.jsp";
		   </script>
		<%
	   }
   }catch(Exception e){
	   e.printStackTrace();
   }
   
   
   %>