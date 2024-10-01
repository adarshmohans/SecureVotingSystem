
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@include file="database.jsp" %>
<%
try{
	
	ResultSet res=stmt.executeQuery("select * from tbl_user");
	
	JSONObject jo;
	JSONArray ja=new JSONArray();
	while(res.next()){
		jo=new JSONObject();
		
		String name=res.getString("user_name");
		String mailid=res.getString("user_email");
		String phoneno=res.getString("user_phoneno");
		String dob=res.getString("user_dob");
		String status=res.getString("user_status");
		String voterid=res.getString("user_voterid");
		String image=res.getString("user_photo");
		
		jo.put("name", name);
		jo.put("mailid", mailid);
		jo.put("phoneno", phoneno);
		jo.put("dob", dob);
		jo.put("status", status);
		jo.put("voterid", voterid);
		jo.put("image", image);
	
		ja.add(jo);
	}
		out.print(ja);
		System.out.println(ja);
}catch(Exception e){
	e.printStackTrace();
}
	








%>