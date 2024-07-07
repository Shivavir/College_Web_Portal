<%@page import="common.Cryptography" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="common.Dbm"%>
<%@page import="common.RenameFile" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%
  String result="";
  // Profile Updation
  String filepath= request.getRealPath("//imgs//userzonepic//");
  RenameFile rf= new RenameFile();
  rf.createDir(filepath);
  MultipartRequest mr= new MultipartRequest(request,filepath,200000000,rf);
		String name =mr.getParameter("txtname");
	    String gender =mr.getParameter("gender");
	    String course =mr.getParameter("course");
	    String add =mr.getParameter("address");
	    String mobno =mr.getParameter("mobno");
	    Dbm dbm= new Dbm();
	     String reg_cmd="";
	     
	     if(rf.MyFileName==null)
	     {
	    reg_cmd="update student_master set name='"+name+"',gender='"+gender+"',course='"+course+"',"+
	     "mobileno='"+mobno+"',address='"+add+"' where emailid='"+session.getAttribute("uid")+"'";
	     }
	     else{
	    	 reg_cmd="update student_master set name='"+name+"',gender='"+gender+"',course='"+course+"',"+
	     "mobileno='"+mobno+"',address='"+add+"',picname='"+rf.MyFileName+"' where emailid='"+session.getAttribute("uid")+"'";
	 	    
	     }
	     
	     boolean status= dbm.dml(reg_cmd);
	     if(status)
	     {
	    	
	    	 out.print("<script> alert('Profile Update Successfully');window.location.href='profile.jsp';</script>");
	     }
	     else
	     {
	    	
	    	 out.print("<script> alert('Unable to Update Profile, Please try again.');window.location.href='profile.jsp';</script>");
	     }
%>



