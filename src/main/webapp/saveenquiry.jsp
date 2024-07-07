<%@ page import="common.Dbm" %>
<% 
     String name=request.getParameter("Name");
     String email=request.getParameter("Email");
     String mob=request.getParameter("MobNo");
     String msg=request.getParameter("Message");
     String res="";
     
     // database connectivity.
     
     Dbm dbm=new Dbm();
     String cmd= "insert into enquiry (name,emailid,mobileno,message) values('"+name+"','"+email+"','"+mob+"','"+msg+"')";
     boolean status=dbm.dml(cmd);
     if(status==true)
     {
    	 res="SUCCESS";
     }
     else
     {
    	 res="FAIL";
     }
     out.print(res);   //SUCCESS/FAIL
%>