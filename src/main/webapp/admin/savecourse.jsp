<%@ page import="common.Dbm" %>
<% 
String course = request.getParameter("course");
String duration = request.getParameter("duration");
String fees = request.getParameter("fees");
String discription = request.getParameter("discription");
String intake = request.getParameter("intake");
String res="";

Dbm dbm = new Dbm();
String cmd= "insert into course (course,duration,fees,discription,intake) values('"+course+"','"+duration+"','"+fees+"','"+discription+"','"+intake+"')";
Boolean status= dbm.dml(cmd);
  if(status)
  {
    out.print("<script>alert('Course Added Successfully.');window.location.href='addcourse.jsp'</script>");
  }
  else
  {
    out.print("<script>alert('Sorry unable to Add Course. Please try again later.');window.location.href='addcourse.jsp'</script>");
  }
  %>