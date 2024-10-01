<%@page import="onlinesecurevoting.Mailer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="database.jsp" %>
<%
try
{
	String voerid=request.getParameter("voerid");
	String password=request.getParameter("password");
	
	ResultSet rs=stmt.executeQuery("select * from tbl_user where user_voterid='"+voerid+"' and password='"+password+"'");
	if(rs.next())
	{
	String wardname=rs.getString("user_ward");
	String wardno=rs.getString("wardno");
	String email=rs.getString("user_email");
	String user_id=rs.getString("tbl_user_id");
	int randomPin1=(int)(Math.random()*9000)+1000;
	String userkey=String.valueOf(randomPin1);
	//System.out.println("userkey="+userkey);
	
	
	session.setAttribute("wardnamekey", wardname);
	session.setAttribute("wardnokey", wardno);
	session.setAttribute("userkey", userkey);
	session.setAttribute("user_id", user_id);
	
	
	Mailer.send(email, "securevoting","key="+userkey);

			
		%>
		<script type="text/javascript">
alert("logined successfully");
window.location.href="user_home.jsp";
	</script>
		<%
		
		
	}
	else
	{
	

		%>
		<script type="text/javascript">
alert("invalid voterid and password");
window.location.href="user_login.jsp";
	</script>
		<%
	}
}
catch(Exception e)
{
	System.out.println(e);
}


%>