<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/securevoting","root", "sa");
Statement stmt=con.createStatement(); 
Statement stmt1=con.createStatement(); 
Statement stmt2=con.createStatement(); 
Statement stmt3=con.createStatement(); 
%>