 <%@page import="java.util.Random"%>
<%@page import="common.Mailer"%>
<%@ page import="java.sql.ResultSet" %>
 <%@ page import="common.Dbm" %>
 <%@ page import="common.Cryptography" %>
 <%
   String utype=request.getParameter("utype");
String uemail=request.getParameter("uemail");
  Dbm dbm= new Dbm();
  String cmd="select * from login where userid='"+uemail+"' and usertype='"+utype+"'";
  //out.print(cmd);
  ResultSet rs=dbm.dql(cmd);
    	int count=0;
    	while(rs.next())
    	{
    		count ++;
    	}
    	if(count==1)
    	{
    		Random r= new Random();
    		int a=r.nextInt(10);
    		int b=r.nextInt(10);
    		int c1=r.nextInt(10);
    		int d=r.nextInt(10);
    		 String otp=""+a+b+c1+d;
    		String subject="Forget Password";
    		String txt="Your One Time Password is "+otp+" for reset password. Regards:- Institute of Professional Studies.";
    				session.setAttribute("otp", otp);
    				Mailer .send(uemail, subject, txt);
    				out.print("<script>alert('OTP send Successfully on your email"+uemail+", Please Varify OTP.'); window.location.href='verifyotp.jsp?email="+uemail+"&utype="+utype+"';</script>");
    			session.setAttribute("uid", uemail);
    			out.print("<script>window.location.href='user/udashboard.jsp';</script>");
    		}
    		else 
    		{
    		 out.print("<script>alert(Invalid user type of user i'd, Please try again); window.location.href='forgetpassword.jsp';</script>");
    		}
%>