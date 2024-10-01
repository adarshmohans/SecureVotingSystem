<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="database.jsp" %>
  <%
  try{
	  String id=request.getParameter("id");
	  System.out.println(id);
	  
	  stmt.executeUpdate("update tbl_nomination set status='1' where tbl_nomination_id='"+id+"' ");
	  %>
	  <script type="text/javascript">
	  alert("approve successfully");
	  window.location.href="admin_candidate_nomination_details.jsp";

	  </script>
	  <%
  }catch(Exception e){
	  e.printStackTrace();
  }
  
  %>