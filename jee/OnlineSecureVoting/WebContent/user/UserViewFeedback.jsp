<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="database.jsp" %>
<%

	try{
		
		String word=request.getParameter("word");
		
		String candidateid="",userid="",feedback="",candidatename="",username="";
		ResultSet res,res1,res2;
		System.out.println("select * from tbl_feedback where feedback_feedback like '%"+word+"%'");
		 res=stmt.executeQuery("select * from tbl_feedback where feedback_feedback like '%"+word+"%'");
		 
		 JSONArray ja=new JSONArray();
		 JSONObject jo;
		 
		while(res.next()){
			jo=new JSONObject();
			
			candidateid=res.getString("tbl_candidate_id");
			userid=res.getString("tbl_user_id");
			feedback=res.getString("feedback_feedback");
			
			
			
			
			res1=stmt1.executeQuery("select * from tbl_candidate where tbl_candidate_id='"+candidateid+"'");
			if(res1.next()){
				candidatename=res1.getString("candidate_name");
				
			}
			
			res2=stmt1.executeQuery("select * from tbl_user where tbl_user_id='"+userid+"'");
			if(res2.next()){
				username=res2.getString("user_name");
				
			}
			
			
			jo.put("feedback", feedback);
			jo.put("candidatename", candidatename);
			jo.put("username", username);
			
			ja.add(jo);
		}
		out.print(ja);
		System.out.println(ja);
		
	}catch(Exception e){
		e.printStackTrace();
	}



%>
