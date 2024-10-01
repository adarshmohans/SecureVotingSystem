
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Date"%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="database.jsp" %>
<%
try
{
	String filepath;
	String outputstring;
	String type, extension;
	int imageNum = 0;
	String imgname="";
	FileItem item = null;
	File uploadedFile=null;
	String fname=null;

	String dbpath="";
	String id1="0";
	int setflag;
	String imgfilename="";

	// Variables of form action field
	String name="",dob="",gender="",address="",email="",fathername="",amount="",ward="",adharno="",phoneno="",wardno="";
	String voterid="",password="";
	JSONArray ja=new JSONArray();
	JSONObject jo=new JSONObject();
	
	
	
	
	
	
	
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	System.out.println("isMulti"+isMultipart);
	if (isMultipart) {
		
	FileItemFactory factory = new DiskFileItemFactory();

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

			System.out.println("factory"+upload);
			// Parse the request
			List  items = upload.parseRequest(request);
			Iterator iterator = items.iterator();
			
			System.out.println("iterator"+iterator);
			while (iterator.hasNext()) {

				item = (FileItem) iterator.next();
				
				System.out.println("Item="+item);
				if (!item.isFormField()) {
					
					String fileName = item.getName();
					System.out.println("Filename="+fileName);
					String root = getServletContext().getRealPath("/");
					System.out.println("root="+root);
					File path = new File("D:/workspace/j2eeworkspace/onlinesecurevoting/WebContent/user/userimage");
					if (!path.exists()) {
						boolean status = path.mkdirs(); 
					}
					
					 GregorianCalendar ob=new GregorianCalendar();
					ob.setTime(new Date());
					
					ob.add(Calendar.DAY_OF_MONTH,0);
					Date d1=ob.getTime();
					System.out.println(d1);
					SimpleDateFormat df1 = new SimpleDateFormat("dd-MMM-yyyyhma");
					String formattedDate1 = df1.format(d1);
					
					imgfilename=formattedDate1+fileName;
					//imgfilename=fileName;
					uploadedFile = new File(path + "/"+imgfilename);
					
					if(!uploadedFile.exists())
					{
						imageNum++;
						uploadedFile = new File(path + "/"+imgfilename);
					}
				
					filepath = uploadedFile.getAbsolutePath();
					System.out.println(filepath);
					extension = filepath.substring(filepath
							.lastIndexOf("."));
					item.write(uploadedFile);
					
					
					
				}
				else
				{
					
					// Get datas from form except file(image,video,audio,file etc)
					if(item.getFieldName().equals("name"))
					{
						
						name=item.getString();
					}
					else if(item.getFieldName().equals("dob"))
					{
						
						dob=item.getString();
					}
					else if(item.getFieldName().equals("gender"))
					{
						
						gender=item.getString();
					}
					else if(item.getFieldName().equals("address"))
					{
						
						address=item.getString();
					}
					else if(item.getFieldName().equals("email"))
					{
						
						email=item.getString();
					}
					else if(item.getFieldName().equals("fathername"))
					{
						
						fathername=item.getString();
					}
					else if(item.getFieldName().equals("ward"))
					{
						
						ward=item.getString();
					}
					
					else if(item.getFieldName().equals("adharno"))
					{
						
						adharno=item.getString();
					}
					else if(item.getFieldName().equals("phoneno"))
					{
						
						phoneno=item.getString();
					}
					else if(item.getFieldName().equals("wardno"))
					{
						
						wardno=item.getString();
					}
					
					
					
					
					
					
					
					int randomPin   =(int)(Math.random()*900000000)+100000000;
					 voterid  =String.valueOf(randomPin);
					System.out.println("PIN no="+voterid);


					
					int randomPin1   =(int)(Math.random()*900)+100;
					password =String.valueOf(randomPin1);
					System.out.println("cvv="+password);
					
					
					
					
					
					
					
				
					
					
					
					
				}
			}
	}

	
	
	dbpath="userimage/"+imgfilename;
	
	fname=uploadedFile.getName();
	imageNum++;
	
	System.out.println(dbpath);
	
	ResultSet rs=stmt.executeQuery("select * from tbl_user where user_phoneno='"+phoneno+"'");
	ResultSet rs1=stmt1.executeQuery("select * from tbl_user where user_email='"+email+"'");
	ResultSet rs2=stmt2.executeQuery("select * from tbl_user where user_adharno='"+adharno+"'");
	
	if(rs.next())
	{
		%>
		<script type="text/javascript">
alert("phoneno exists");
window.location.href="user_signup.jsp";
	</script>
		<%
	}
	else if(rs1.next())
	{
		%>
		<script type="text/javascript">
alert("email exists");
window.location.href="user_signup.jsp";
	</script>
		<%
	}
	else if(rs2.next())
	{
		%>
		<script type="text/javascript">
alert("aadharNo exists");
window.location.href="user_signup.jsp";
	</script>
		<%
	}
	else
	{
		stmt3.executeUpdate("insert into tbl_user(user_name,user_email,user_phoneno,user_photo,user_dob,user_status,user_voterid,user_gender,user_address,user_fathername,user_ward,user_adharno,password,wardno)values('"+name+"','"+email+"','"+phoneno+"','"+dbpath+"','"+dob+"','1','"+voterid+"','"+gender+"','"+address+"','"+fathername+"','"+ward+"','"+adharno+"','"+password+"','"+wardno+"')");
	
		%>
		<script type="text/javascript">
alert("added success");
window.location.href="user_signup.jsp";
	</script>
		<%
	}
	
	
	
	

	

}
catch(Exception e)
{
	e.printStackTrace();
}
%>