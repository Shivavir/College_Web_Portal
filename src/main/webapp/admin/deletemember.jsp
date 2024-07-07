<%@ page import="common.Dbm" %>
<% 
String id = request.getParameter("id");

Dbm dbm = new Dbm();
String cmd= "delete from faculty where id='"+id+"'";
Boolean status= dbm.dml(cmd);
  if(status)
  {
    out.print("<script>alert('Member Deleted Successfully.');window.location.href='addmember.jsp'</script>");
  }
  else
  {
    out.print("<script>alert('Sorry unable to Delete Member. Please try again later.');window.location.href='addmember.jsp'</script>");
  }
  %>