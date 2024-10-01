<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@include file="database.jsp" %>
<%
try{

	String notice="",image="",document="",date="";
	ResultSet res;
	
	JSONArray ja=new JSONArray();
	JSONObject jo;
	res=stmt.executeQuery("select * from admin_notice");
	while(res.next()){
		jo=new JSONObject();
		
		notice=res.getString("notice_notice");
		image=res.getString("notice_image");
		document=res.getString("notice_document");
		date=res.getString("date");
		
		jo.put("notice", notice);
		jo.put("image", image);
		jo.put("document", document);
		jo.put("date", date);
		
		ja.add(jo);
	}
out.print(ja);
System.out.print(ja);

}catch(Exception e){
	e.printStackTrace();
}
%>