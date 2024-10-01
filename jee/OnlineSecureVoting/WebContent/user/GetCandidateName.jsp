<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="database.jsp" %>
 <%
 
 try{
	 ResultSet res=stmt.executeQuery("select * from tbl_candidate");
	 JSONObject jo;
	 JSONArray ja=new JSONArray();
	 while(res.next()){
		 jo=new JSONObject();
		 
		 String name=res.getString("candidate_name");
		 jo.put("name", name);
		 ja.add(jo);
		 
	 }
	 out.print(ja);
	 System.out.println(ja);
 }catch(Exception e){
	 e.printStackTrace();
 }
 %>