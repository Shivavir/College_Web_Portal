<%@page import="common.Cryptography" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="common.Dbm"%>
<%@page import="common.RenameFile" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%
  String result="";
  // Profile Updation
  String savepath="/files/study-material/";
  String filepath= request.getRealPath(savepath);
  RenameFile rf= new RenameFile();
  rf.createDir(filepath);
  MultipartRequest mr= new MultipartRequest(request,filepath,200000000,rf);
		String upsubject =mr.getParameter("upsubject");
	    String uptopic =mr.getParameter("uptopic");
	    String updesc =mr.getParameter("updesc");
	    Dbm dbm= new Dbm();
	     String cmd="insert into studymaterial (subject,topic,description,filename) values('"+upsubject+"','"+uptopic+"','"+updesc+"','"+savepath+rf.MyFileName+"')";
	     boolean status = dbm.dml(cmd);
	     if(status)
	     {	
	      String msg="Study material upload Successfully.";
	      out.print("<script> alert('"+msg+"'); window.location.href='astudymaterial.jsp';</script>");
	    }
	     else
	     {
	    	 String msg="Sorry! Unable to upload material.";
		      out.print("<script> alert('"+msg+"'); window.location.href='astudymaterial.jsp';</script>");
	     }
%>



