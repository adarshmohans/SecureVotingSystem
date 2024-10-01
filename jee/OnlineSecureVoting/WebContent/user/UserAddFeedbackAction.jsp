<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="database.jsp" %>
<%
try{
	String candidateid="",userid="";
	String candidatename=request.getParameter("candidate");
	String feedbaack=request.getParameter("feedbaack");
	userid=session.getAttribute("user_id").toString();
	
	DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
    Date date = new Date();
    System.out.println(dateFormat.format(date));	 
    String date1=dateFormat.format(date);
    
	ResultSet res=stmt.executeQuery("select * from tbl_candidate where candidate_name='"+candidatename+"'");
	
	if(res.next()){
		candidateid=res.getString("tbl_candidate_id");
	}
	
	stmt1.executeUpdate("insert into tbl_feedback(tbl_candidate_id,tbl_user_id,feedback_feedback,feedback_date) value('"+candidateid+"','"+userid+"','"+feedbaack+"','"+date1+"')");
	%>
	<script type="text/javascript">
	alert("feedback updated successfully");
	window.location.href="user_add_feedback.jsp";
	</script>
	<%
	
}catch(Exception e){
	e.printStackTrace();
}
%>