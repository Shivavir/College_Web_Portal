<%@ page import="common.Dbm" %>
<% 
String id = request.getParameter("id");

Dbm dbm = new Dbm();
String cmd= "delete from notification where notification_id='"+id+"'";
Boolean status= dbm.dml(cmd);
  if(status)
  {
    out.print("<script>alert('Notification Deleted Successfully.');window.location.href='notification.jsp'</script>");
  }
  else
  {
    out.print("<script>alert('Sorry unable to Delete Notification. Please try again later.');window.location.href='notification.jsp'</script>");
  }
  %>