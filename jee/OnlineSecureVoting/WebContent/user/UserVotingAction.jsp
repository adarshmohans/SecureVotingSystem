<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="database.jsp" %>
  <%
  try{
	  String image="";
		 String icon="";
		 
	  DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	     Date date = new Date();
	     System.out.println(dateFormat.format(date));	 
	     String date1=dateFormat.format(date);
	     System.out.println(date1);
	     
	     String wardname=session.getAttribute("wardnamekey").toString();
	     String wardno=session.getAttribute("wardnokey").toString(); 
	     
	     JSONObject jo;
	     JSONArray ja=new JSONArray();
	     ResultSet res=stmt.executeQuery("select * from tbl_nomination where electiondate='"+date1+"' and nomination_wardname='"+wardname+"' and nomination_wardno='"+wardno+"'");
	     while(res.next()){
	    	 jo=new JSONObject();
	    	 
	    	 String name=res.getString("nomination_name");
	    	 String candidateid=res.getString("tbl_candidate_id");
	    	 
	    	
	    	 
	    	 ResultSet res1=stmt1.executeQuery("select * from tbl_candidate where tbl_candidate_id='"+candidateid+"'");
	    	 if(res1.next()){
	    		  image=res1.getString("candidate_image");
	    		  icon=res1.getString("candidate_partyicon");
	    		 
	    		 
	    	 }
	    	 jo.put("name", name);
    		 jo.put("image", image);
    		 jo.put("icon", icon);
    		 jo.put("candidateid", candidateid);
	    	 ja.add(jo);
	     }
	  out.print(ja);
	  System.out.println(ja);
	  
  }catch(Exception e){
	  e.printStackTrace();
  }
  
  
  %>