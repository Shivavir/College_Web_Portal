<%@page import="common.Mailer"%>
<%@page import="common.Cryptography" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="common.Dbm"%>
<%@page import="common.RenameFile" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%
  String result="";
  // recaptcha Validation
  String filepath= request.getRealPath("//imgs//userzonepic//");
   
  RenameFile rf= new RenameFile();
      rf.createDir(filepath);
      
    MultipartRequest mr =new MultipartRequest(request,filepath,20000000,rf);

  
   String resp=mr.getParameter("g-recaptcha-response");
   String mykey="6LcuI9ohAAAAAKJllcRXLNNjbU5pPwiBAs5_YDNn";
   String apiURL="https://www.google.com/recaptcha/api/siteverify?secret="+
   mykey+"&response="+resp;
   URL myurl=new URL(apiURL);
   URLConnection uc=myurl.openConnection();
		InputStream istream =uc.getInputStream();  // To send request to API and get Response.
		BufferedReader br=new BufferedReader(new InputStreamReader(istream));
		String inputLine;
		String st="";
		
		while ((inputLine = br.readLine()) != null) {
			st=st+inputLine;
		}
               
	int n=st.indexOf("true");
	if(n>=0)
	{
		String name =mr.getParameter("name");
	    String gender =mr.getParameter("gender");
	    String email =mr.getParameter("email");
	    String course =mr.getParameter("course");
	    String add =mr.getParameter("address");
	    String mobno =mr.getParameter("mobno");
	    String pwd =mr.getParameter("pwd");
	    Dbm dbm= new Dbm();
	    String reg_cmd="insert into student_master (name,gender,course,emailid,mobileno,address,picname) values('"+name+"','"+gender+"','"+course+"','"+email+"','"+mobno+"','"+add+"','"+rf.MyFileName+"');";
	  
	    boolean reg_status=dbm.dml(reg_cmd);
	    out.print(reg_status);
	    
		Cryptography c=new Cryptography();
		String login_cmd="insert into login values('"+email+"','"+c.EncryptMyData(pwd)+"','user');";
		boolean login_status=dbm.dml(login_cmd);
		out.print(login_status);
		
		if(reg_status && login_status)
		{
			String msg="Registrtion Successfull.";
			Mailer.send(email, "Registration", "Registration successfull, thanks for the registration.");
			out.print("<script> alert('"+msg+"');window.location.href='registration.jsp';</script>");
				
		}
		else
		{
			result="Invalid re-Catcha,please try again later.";
		    String msg="Registration Successfull";
			out.print("<script> alert('"+result+"'); window.location.href='registration.jsp?res="+result+"';</script>");
			
		}
		
	}
	else 
	{
		result="Invalid re-Captcha please try again.";
		String msg="Registration successfull.";
		out.print("<script> alert('"+result+"'); window.location.href='registration.jsp?res="+result+"';</script>");
	}
	
	//out.print("<script>window.location.href='registration.jsp?res="+result+"';</script>");

%>



