<%@page import="common.Mailer"%>
<%@page import="common.Dbm"%>
<%
  String mobno=request.getParameter("mobno");
  String message=request.getParameter("message");

  Dbm dbm=new Dbm();
  String cmd="insert into sms (mobno,message) values('"+mobno+"','"
  +message+"')";
  Boolean status= dbm.dml(cmd);
   if(status)
   {
	   try{
		   
		   out.print("<script>alert('SMS send successfully.'); "+
				   "window.location.href='sendsms.jsp'</script>");
	   }catch(Exception e)
	   {
		out.print(e);
		   out.print("<script>alert('Sorry, unable to send SMS,"+
		" please try again later.'); window.location.href='sendsms.jsp'</script>");
	   }
   }
   else
   {
	   out.print("<script>alert('Sorry, unable to send SMS,"+
   " please try again later.'); window.location.href='sendsms.jsp'</script>");
	   
   }
  
%>