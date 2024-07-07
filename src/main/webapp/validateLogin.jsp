 <%@ page import="java.sql.ResultSet" %>
 <%@ page import="common.Dbm" %>
 <%@ page import="common.Cryptography" %>
 <%
   String utype=request.getParameter("utype");
String uemail=request.getParameter("uemail");
String upwd=request.getParameter("upwd");
  Dbm dbm= new Dbm();
  Cryptography c=new Cryptography();
  String cmd="select * from login where userid='"+uemail+"' and pass='"+c.EncryptMyData(upwd)+"' and usertype='"+utype+"'";
  //out.print(cmd);
  ResultSet rs=dbm.dql(cmd);
    	int count=0;
    	while(rs.next())
    	{
    		count ++;
    	}
    	if(count==1)
    	{
    		if(utype.equals("user"))
    		{
    			session.setAttribute("uid", uemail);
    			out.print("<script>window.location.href='user/udashboard.jsp';</script>");
    		}
    		else if(utype.equals("admin"))
    		{
    				session.setAttribute("aid", uemail);
    				out.print("<script>window.location.href='admin/adashboard.jsp';</script>");
    		}
    		else
    		{
    			out.print("<script>alert('invalid user type Plrase try again later.');window.location.href='signup.jsp';</script>");
    		}
    	}
    	else{
    		out.print("<script>alert('invalid userid, passward or user type Please try again.'); window.location.href='signup.jsp';</script>");
    	}
    
%>