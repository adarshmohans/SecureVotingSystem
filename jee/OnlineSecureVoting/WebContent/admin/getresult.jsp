<%@page import="onlinesecurevoting.DataEncryption"%>

<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@include file="database.jsp" %>
<%
try{
	int s=0;
	String date=request.getParameter("date");
	String key=request.getParameter("userkey");
	String candidateid=request.getParameter("candidateid");
	
	System.out.println(date);
	System.out.println(key);
	System.out.println(candidateid);
	
	JSONArray ja=new JSONArray();
	JSONObject jo=new JSONObject();
	
	
	ResultSet rs=stmt.executeQuery("select * from tbl_vote where electiondate='"+date+"' and userkey='"+key+"'");
	if(rs.next())
	{
		ResultSet res=stmt1.executeQuery("select AES_DECRYPT(priority,'123') as pri from tbl_vote where electiondate='"+date+"' and tbl_candidate_id='"+candidateid+"'");
		while(res.next())
		{
			String priority=res.getString("pri");
			//String str_decryted=DataEncryption.decrypt("123", priority);

			
			try
			{
				int priority1=Integer.parseInt(priority);
				s=s+priority1;	
			}
			catch(NumberFormatException ex)
			{ 
					System.out.println(ex);
			}
			
		}
		
		jo.put("msg", "success");
		jo.put("result", ""+s);
	}
	else
	{
		
		
		
		jo.put("msg", "invalidkey");
		
	}
	ja.add(jo);
		out.print(ja);
		System.out.println(ja);
}catch(Exception e){
	e.printStackTrace();
}
	








%>