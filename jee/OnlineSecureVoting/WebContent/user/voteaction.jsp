<%@page import="onlinesecurevoting.DataEncryption"%>
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
		String id=request.getParameter("id");
		String priority=request.getParameter("priority");
		String count=request.getParameter("count");
		
		String userid=session.getAttribute("user_id").toString();
		String userkey=session.getAttribute("userkey").toString();
		
		/* String data1_encrypted=DataEncryption.encrypt("123", priority);
		System.out.println("Data1_Encrypted"+data1_encrypted); */
		
		
		/* int randomPin1=(int)(Math.random()*90000)+10000;
		String prioritykey=String.valueOf(randomPin1);
		System.out.println("userkey="+prioritykey); */

		
		
		
		 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	     Date date = new Date();
	     System.out.println(dateFormat.format(date));	 
	     String date1=dateFormat.format(date);
	     System.out.println(date1);
	     
	     int count1=Integer.parseInt(count);
	     int prority1=Integer.parseInt(priority);
	     
	     int difcount=count1-prority1;
	     
	     
	     stmt.executeUpdate("insert into tbl_vote(tbl_candidate_id,tbl_user_id,userkey,priority,electiondate,status)values('"+id+"','"+userid+"','"+userkey+"',AES_ENCRYPT('"+priority+"', '123'),'"+date1+"','0')");
		
		
	     
		
	     JSONArray ja=new JSONArray();
	     JSONObject jo=new JSONObject();
		
		
	   
	  
	    	 jo.put("count", ""+difcount);
	    	 jo.put("msg", "voted succesfully");
	    	 ja.add(jo);
	     
	  out.print(ja);
	  System.out.println(ja);
	  
  }catch(Exception e){
	  e.printStackTrace();
  }
  
  
  %>