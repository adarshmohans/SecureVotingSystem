<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="database.jsp" %>
 <%
 try{
	 
	 String candidate=request.getParameter("candidate");
	
	 
	 JSONObject  jo=new JSONObject();
	 JSONArray ja=new JSONArray();
	
	 ResultSet res=stmt.executeQuery("select * from tbl_nomination where tbl_candidate_id='"+candidate+"'");
	 
	 if(res.next()){
		
		 
		 
		 
		 
		 String nomination_position=res.getString("nomination_position");
		 String nomination_wardname=res.getString("nomination_wardname");
		 String nomination_wardno=res.getString("nomination_wardno");
		String ward=nomination_wardname+" "+"NO"+" "+nomination_wardno;
		 
		
		
		 jo.put("nomination_position", nomination_position);
		 jo.put("ward", ward);
		
		 ja.add(jo);
	 }
	 out.println(ja);
	 System.out.println(ja);
	
	 
 }catch(Exception e){
	 e.printStackTrace();
 }
 
 %>