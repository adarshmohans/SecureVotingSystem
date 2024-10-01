<%@page import="java.text.DateFormat"%>
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
	String name="",wardno="",position="",responsibility="",specify="",backgrounddetails="",partydetails="",ward="",electiondate="";
	

		
	
	
	
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
					File path = new File("D:/workspace/j2eeworkspace/OnlineSecureVoting/WebContent/admin/CandidateImage");
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
				
					else if(item.getFieldName().equals("backgrounddetails"))
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
					else if(item.getFieldName().equals("wardno"))
					{
						
						wardno=item.getString();
					}
					else if(item.getFieldName().equals("position"))
					{
						
						position=item.getString();
					}
					else if(item.getFieldName().equals("responsibility"))
					{
						
						responsibility=item.getString();
					}
					else if(item.getFieldName().equals("specify"))
					{
						
						specify=item.getString();
					}
					else if(item.getFieldName().equals("electiondate"))
					{
						
						electiondate=item.getString();
					}
					
				}
			}
	}
	

	dbpath="CandidateImage/"+imgfilename;
	
	fname=uploadedFile.getName();
	imageNum++;
	
	System.out.println(dbpath);
	ResultSet res4,res1,res2,res3;
	Statement st4,st1,st2,st3;
		 try{
			 
			 Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securevoting","root","sa");
				st4=con.createStatement();
				st1=con.createStatement();
				st2=con.createStatement();
				st3=con.createStatement();
				
		 String id=session.getAttribute("idkey").toString();
		 System.out.println("candidate id="+id);
		 String status="0";
		 
		 DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
	     Date date = new Date();
	     System.out.println(dateFormat.format(date));	 
	     String date1=dateFormat.format(date);
	     
		 String sql="insert into tbl_nomination(nomination_name,nomination_address,nomination_party,nomination_wardname,nomination_wardno,nomination_position,nomination_responsibility,nomination_specify,status,tbl_candidate_id,electiondate,nominationdate) value ('"+name+"','"+backgrounddetails+"','"+partydetails+"','"+ward+"','"+wardno+"','"+position+"','"+responsibility+"','"+specify+"','"+status+"','"+id+"','"+electiondate+"','"+date1+"')";
		 st4.executeUpdate(sql);
		 
		 st1.executeUpdate("update tbl_candidate set candidate_image='"+dbpath+"' where tbl_candidate_id='"+id+"'");
		 %>
		 <script type="text/javascript">
		 alert("nomination details added successfully");
		 window.location.href="candidate_add_nomination_details.jsp";
		 </script>
		 <%
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 
		 
	 }catch(Exception e){
		 e.printStackTrace();
	 }
	 
	 %>