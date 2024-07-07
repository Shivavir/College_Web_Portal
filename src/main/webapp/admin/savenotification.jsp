<%@ page import="common.Dbm" %>
<% 
String notification = request.getParameter("notification");
String link = request.getParameter("link");
String res="";

Dbm dbm = new Dbm();
String cmd= "insert into notification (message,link) values('"+notification+"','"+link+"')";
Boolean status= dbm.dml(cmd);
  if(status)
  {
    out.print("<script>alert('Notification saved Successfully.');window.location.href='notification.jsp'</script>");
  }
  else
  {
    out.print("<script>alert('Sorry unable to save Notification. Please try again later.');window.location.href='notification.jsp'</script>");
  }
  %>