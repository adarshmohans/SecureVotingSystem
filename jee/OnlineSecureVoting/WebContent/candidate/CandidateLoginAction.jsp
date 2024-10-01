<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="database.jsp" %>
    
    <%
    try{
    	
    	String username=request.getParameter("username");
    	String password=request.getParameter("password");
    	
    	ResultSet res=stmt.executeQuery("select * from tbl_candidate where candidate_email='"+username+"' and candidate_password='"+password+"'");
    	if(res.next())
    	{
    		String id=res.getString("tbl_candidate_id");
    		session.setAttribute("idkey", id);
    		
    		%>alert("Login Success");
    		<% 
    		response.sendRedirect("candidate_home.jsp");
    	}
    	else
    		response.sendRedirect("candidate_login.jsp");
    }catch(Exception e){
    	e.printStackTrace();
    }
    
    
    
    %>