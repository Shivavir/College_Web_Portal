<%@ page import="common.Dbm" %>
<% 
String id = request.getParameter("id");

Dbm dbm = new Dbm();
String cmd= "delete from course where id='"+id+"'";
Boolean status= dbm.dml(cmd);
  if(status)
  {
    out.print("<script>alert('Course Deleted Successfully.');window.location.href='addcourse.jsp'</script>");
  }
  else
  {
    out.print("<script>alert('Sorry unable to Delete Course. Please try again later.');window.location.href='addcourse.jsp'</script>");
  }
  %>