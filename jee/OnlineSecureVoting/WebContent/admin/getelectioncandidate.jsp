<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="database.jsp" %>
 <%
 try{
	 
	 String date=request.getParameter("electiondate");
	 String candidate_id="";
	 String candidate_name="";
	 
	 JSONObject jo;
	 JSONArray ja=new JSONArray();
	
	 ResultSet res=stmt.executeQuery("select distinct tbl_candidate_id from tbl_vote where electiondate='"+date+"'");
	 
	 while(res.next()){
		
		 
		 
		 
		 String tbl_candidate_id=res.getString("tbl_candidate_id");
		
		 
		 ResultSet res1=stmt1.executeQuery("select * from tbl_candidate where tbl_candidate_id='"+tbl_candidate_id+"'");
		 if(res1.next()){
			 candidate_id=res1.getString("tbl_candidate_id");
			 candidate_name=res1.getString("candidate_name");
		 }
		 jo=new JSONObject();
		 jo.put("candidate_id", candidate_id);
		 jo.put("candidate_name", candidate_name);
		
		 ja.add(jo);
	 }
	 out.println(ja);
	 System.out.println(ja);
	
	 
 }catch(Exception e){
	 e.printStackTrace();
 }
 
 %>