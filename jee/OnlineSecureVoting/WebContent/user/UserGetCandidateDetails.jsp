<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="database.jsp" %>
 <%
 try{
	 JSONObject jo;
	 JSONArray ja=new JSONArray();
	 String str="";
	 ResultSet res=stmt.executeQuery("select * from tbl_nomination");
	 
	 while(res.next()){
		 jo=new JSONObject();
		 
		 String partyicon=null;
		 
		 String name=res.getString("nomination_name");
		 String electiondate=res.getString("electiondate");
		 String ward=res.getString("nomination_wardname");
		 String address=res.getString("nomination_address");
		 String partydetails=res.getString("nomination_party");
		 String wardno=res.getString("nomination_wardno");
		 String position=res.getString("nomination_position");
		 String id=res.getString("tbl_candidate_id");
		
		 str=ward+" "+wardno;
		 
		 ResultSet res1=stmt1.executeQuery("select * from tbl_candidate where tbl_candidate_id='"+id+"'");
		 if(res1.next()){
			  partyicon=res1.getString("candidate_partyicon");
		 }
		 
		 jo.put("name", name);
		 jo.put("electiondate", electiondate);
		 jo.put("str", str);
		 jo.put("address", address);
		 jo.put("partydetails", partydetails);
		 jo.put("position", position);
		 jo.put("partyicon", partyicon);
		
		 ja.add(jo);
	 }
	 out.println(ja);
	 System.out.println(ja);
	
	 
 }catch(Exception e){
	 e.printStackTrace();
 }
 
 %>