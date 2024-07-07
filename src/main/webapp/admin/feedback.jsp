<%@ page import="java.sql.ResultSet"%>
<%@ page import="common.Dbm" %>
<html>
<head>
    
    <title>Notification Management</title>
     <%@ include file="common/links.jsp" %>
</head>
<body>
    
    <div class="container-fluid">
       <%@ include file="common/header.jsp" %>
    <br/>        <h1 style="text-align: center; color: black; marginr: 1% 0px 1% 0px;">Feedback</h1>
            <div class="row" style="min-height: 600px;">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
         <h1 style="text-align:center; color: white; margin: 7px 0px 7px 0px;">Enquiry Managemenet</h1>
         <%
          Dbm dbm= new Dbm();
         String cmd="select * from feedback order by datetime desc";
          ResultSet rs=dbm.dql(cmd);
         int count=1;
         out.print("<table class='table table-bordered table-hover'><tr style=''><th>SN.</th><th>Email</th><th>Rating</th><th>Message</th><th>date Time</th></tr>");
         
         while(rs.next())
        	 {
        	   out.print("<tr><td>"+count+"</td><td>"+rs.getString(2)+"<a href='sendemail.jsp?email="+rs.getString(2)+"&subject=Reply on your feedback' style='text-decoration:none'> Reply</a></td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
        	 count++;
        	 }
         out.print("</table>");
         %>
        </div>
       
        </div>
        
        <!--Main Body End  -->
        <%@ include file="common/footer.jsp" %>

</body>
</html>