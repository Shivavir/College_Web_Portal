<%@page import="common.Cryptography" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="common.Dbm"%>
<%@page import="common.RenameFile" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%
  String result="";
  String savepath="/files/members/";
  String filepath= request.getRealPath(savepath);
  out.print(filepath);
  RenameFile rf= new RenameFile();
  rf.createDir(filepath);
  MultipartRequest mr= new MultipartRequest(request,filepath,200000000,rf);
		String name =mr.getParameter("name");
	    String experience =mr.getParameter("experience");
	    String qualification =mr.getParameter("qualification");
	    String faculty =mr.getParameter("faculty");
	    String designaion =mr.getParameter("designaion");
	    Dbm dbm= new Dbm();
 String cmd="insert into faculty (name,experience,faculty,designation,picture,qualification) values('"
	    +name+"','"+experience+"','"+faculty+"','"+designaion+"','"+savepath+rf.MyFileName+"','"
 		+qualification+"')";
	     boolean status = dbm.dml(cmd);
	     if(status)
	     {	
	      String msg="Record saved successfully.";
	      out.print("<script> alert('"+msg+"'); window.location.href='addmember.jsp';</script>");
	    }
	     else
	     {
	    	 String msg="Sorry! Unable to save record,  try again later";
		      out.print("<script> alert('"+msg+"'); window.location.href='addmember.jsp';</script>");
	     }
%>



