<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="database.jsp" %>
<%
try
{
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
	
	ResultSet rs=stmt.executeQuery("select * from tbl_admin where admin_username='"+username+"' and admin_password='"+password+"'");
	if(rs.next())
	{
		response.sendRedirect("admin_home.jsp");
		
	}
	else
	{
	
		response.sendRedirect("admin_login.jsp");
	}
}
catch(Exception e)
{
	System.out.println(e);
}


%>