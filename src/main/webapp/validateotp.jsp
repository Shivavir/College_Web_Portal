 <%@page import="java.util.Random"%>
<%@page import="common.Mailer"%>
<%@ page import="java.sql.ResultSet" %>
 <%@ page import="common.Dbm" %>
 <%@ page import="common.Cryptography" %>
 <%
   String otp=request.getParameter("otp");
String email=request.getParameter("email");
String utype=request.getParameter("utype");
  /* out.print(otp);
  out.print(email);
  out.print(utype); */
if(otp.equals(session.getAttribute("otp")))
  {
	session.setAttribute("otpstatus", true);
	  out.print("<script> alert('OTP verified successfully, Please create new password.'); window.location.href='createpassword.jsp?email="+email+"&utype="+utype+"';</script>");  
 }
    		else 
    		{
    		 out.print("<script>alert('Invalid OTP, Please try again later.'); window.location.href='verifyotp.jsp';</script>");
    		}
%>