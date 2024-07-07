<%@page import="common.Mailer"%>
<%@ page import="common.Dbm" %>
<% 
String receiver = request.getParameter("receiver");
String subject = request.getParameter("subject");
String message = request.getParameter("message");
String res="";

Dbm dbm = new Dbm();
String cmd= "insert into email (receiver,subject,message) values('"+receiver+"','"+subject+"','"+message+"')";
Boolean status= dbm.dml(cmd);
  if(status)
  {
	  try
	  {
		  Mailer m = new Mailer();
		  m.send(receiver, subject, message);
		 // out.print(receiver);
		  out.print("<script>alert('Email send successfully.');window.location.href='sendemail.jsp'</script>");
	  }
	  catch(Exception e)
	  {
		  out.print(e.getMessage());
		  out.print("<script>alert('Sorry!, Unable to send email.');window.location.href='sendemail.jsp'</script>");
	  }
	 }
  else
  {
    out.print("<script>alert('Sorry unable to Send Email. Please try again later.');window.location.href='sendemail.jsp'</script>");
  }
  %>