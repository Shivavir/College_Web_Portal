 <%@page import="java.util.Random"%>
<%@page import="common.Mailer"%>
<%@ page import="java.sql.ResultSet" %>
 <%@ page import="common.Dbm" %>
 <%@ page import="common.Cryptography" %>
 <%
   String utype=request.getParameter("utype");
 String pwd=request.getParameter("pwd");
String uemail=request.getParameter("email");
  if(session.getAttribute("otpstatus").equals(true)){
	  Dbm dbm= new Dbm();
	  Cryptography c= new Cryptography();
	  String cmd= "update login set pass='"+c.EncryptMyData(pwd)+"' where userid='"+uemail+"' and usertype='"+utype+"'";
	  //out.print(cmd);
	  Boolean status=dbm.dml(cmd);
	  if(status)
	  {
		  out.print("<script> alert('Password Created Successfully.');window.location.href='signup.jsp';</script>");
	  }
  else{
	  out.print("<script> alert('Unable to create Passward, Please try agai later.'); window.location.href='signup.jsp'</script>");
  }
  }
  else{
		  out.print("<script> alert('Unauthrised Access.s'); window.location.href='signup.jsp'</script>");
		 }
%>