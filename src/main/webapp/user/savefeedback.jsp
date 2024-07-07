<%@page import="common.Mailer"%>
<%@ page import="common.Dbm" %>
<% 
String rating = request.getParameter("rating");
String feedmsg = request.getParameter("feedmsg");


Dbm dbm = new Dbm();
String cmd= "insert into feedback (email,rating,message) values('"+session.getAttribute("uid")+
		"','"+rating+"','"+feedmsg+"')";
Mailer.send((String)session.getAttribute("uid"), "Thankyou Mail", "Thanks for your valueable feedback.");
Boolean status= dbm.dml(cmd);
  if(status)
	  
  {
    out.print("<script>alert('Feedback saved Successfully.');window.location.href='feedback.jsp'</script>");
  }
  else
  {
    out.print("<script>alert('Sorry unable to save feedback. Please try again later.');window.location.href='feedback.jsp'</script>");
  }
  %>