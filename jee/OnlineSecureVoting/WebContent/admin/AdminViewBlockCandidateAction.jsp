
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
		String mailid=res.getString("candidate_email");
		String phoneno=res.getString("candidate_phoneno");
		String backdetails=res.getString("candidate_backgrounddetails");
		String partydetails=res.getString("candidate_partydetails");
		String ward=res.getString("candidate_ward");
		String icon=res.getString("candidate_partyicon");
		String image=res.getString("candidate_image");
		
		jo.put("name", name);
		jo.put("mailid", mailid);
		jo.put("phoneno", phoneno);
		jo.put("icon", icon);
		jo.put("backdetails", backdetails);
		jo.put("partydetails", partydetails);
		jo.put("ward", ward);
		jo.put("image", image);
	
		ja.add(jo);
	}
		out.print(ja);
		System.out.println(ja);
}catch(Exception e){
	e.printStackTrace();
}
	








%>