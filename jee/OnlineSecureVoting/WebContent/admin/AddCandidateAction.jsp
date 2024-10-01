<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
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
	String name="",gender="",dob="",mailid="",phoneno="",backgrounddetails="",partydetails="",ward="";
	

	int randomPin   =(int)(Math.random()*9000)+1000;
	String password  =String.valueOf(randomPin);
	System.out.println("password="+password);
	
	
	
	
	
	
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
					File path = new File("D:/workspace/j2eeworkspace/OnlineSecureVoting/WebContent/admin/CandidateIcon");
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
				
					else if(item.getFieldName().equals("gender"))
					{
						
						gender=item.getString();
					}
					else if(item.getFieldName().equals("emailid"))
					{
						
						mailid=item.getString();
					}
					else if(item.getFieldName().equals("phoneno"))
					{
						
						phoneno=item.getString();
						
					}
					else if(item.getFieldName().equals("dob"))
					{
						
						dob=item.getString();
					}
					else if(item.getFieldName().equals("backdetails"))
					{
						
						backgrounddetails=item.getString();
					}
					else if(item.getFieldName().equals("partydetails"))
					{
						
						partydetails=item.getString();
					}
					else if(item.getFieldName().equals("ward"))
					{
						
						ward=item.getString();
					}
					
					
				}
			}
	}

	
	
	dbpath="CandidateIcon/"+imgfilename;
	
	fname=uploadedFile.getName();
	imageNum++;
	
	System.out.println(dbpath);
	
	
	ResultSet res4,res1,res2,res3;
	Statement st4,st1,st2,st3;
 
	try
	{
		
			
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securevoting","root","sa");
		st4=con.createStatement();
		st1=con.createStatement();
		st2=con.createStatement();
		st3=con.createStatement();
		
		
		
		res1=st1.executeQuery("select * from tbl_candidate where candidate_email='"+mailid+"'");
		res2=st2.executeQuery("select * from tbl_candidate where candidate_phoneno='"+phoneno+"'");
	
		
	 if(res1.next())
		{
			%>
			<script type="text/javascript">
			alert("mailid already exists");
			window.location.href="admin_add_candidate.jsp";
			</script> 

			<%
		}
	 else if(res2.next())
		{
			%>
			<script type="text/javascript">
			alert("phone number already exists");
			window.location.href="admin_add_candidate.jsp";
			</script> 

			<%
		}
	
		else
		{
			String insert_hotel="insert into tbl_candidate(candidate_name,candidate_gender,candidate_dob,candidate_email,candidate_phoneno,candidate_backgrounddetails,candidate_partydetails,candidate_ward,candidate_partyicon,candidate_password)value('"+name+"','"+gender+"','"+dob+"','"+mailid+"','"+phoneno+"','"+backgrounddetails+"','"+partydetails+"','"+ward+"','"+dbpath+"','"+password+"')";
			st3.executeUpdate(insert_hotel);
			
			
			
			

			%>
			<script type="text/javascript">
			alert("Candidate Details added successfully");
			window.location.href="admin_add_candidate.jsp";
			</script> 

			<%
		
		
		}
		
		
		
		
		
		
		
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	} 
	
	
	
	

}
catch(Exception e)
{
	e.printStackTrace();
}
%>