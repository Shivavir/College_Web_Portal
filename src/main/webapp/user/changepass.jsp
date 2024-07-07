<%@page import="java.sql.ResultSet"%>
<%@page import="common.Cryptography"%>
<%@ page import="common.Dbm" %>
<% 
String oldpass = request.getParameter("oldpass");
String newpass = request.getParameter("newpass");
Dbm dbm = new Dbm();
Cryptography c = new Cryptography();
String cmd= "select * from login where userid='"+session.getAttribute("uid")+"' and pass='"+c.EncryptMyData(oldpass)+"' and usertype='user'";
    ResultSet r= dbm.dql(cmd);
    int count=0;
    while(r.next())
    {
    	count++;
    }
  if(count==1)
  {
	  String query="Update login set pass='"+c.EncryptMyData(newpass)+"'where userid='"+session.getAttribute("uid")+"' and pass='"+c.EncryptMyData(oldpass)+"' and usertype='user'";
	  Boolean status= dbm.dml(query);
	  if(status)
	  {
		  out.print("<script>alert('Password Changed Successfully.');window.location.href='changepassword.jsp'</script>");
	  }
  
  else
  {
    out.print("<script>alert('Sorry unable to change Password. Please try again later.');window.location.href='chngepassword.jsp'</script>");
  }
  }
   else
  {
	    out.print("<script>alert('Unable to Change Password, Please try Again.');window.location.href='chngepassword.jsp'</script>");
	  }
  %>