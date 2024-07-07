<%@page import="common.Dbm"%>
<%@page import="java.sql.ResultSet"%>
<html>
  <head>
    <title>College project about us</title>
	<%@ include file="common-pages/links.jsp" %>
	
  </head>
  <body>
    <div id="outer" class="container-fluid">
	<%@ include file="common-pages/header.jsp" %>
	<%@ include file="common-pages/menu.jsp" %>
	
	
		<div id="main" class="row" style="padding: 1.5% 10% 1.5% 10% ; min-height: 600px;">
	<h1 class="page-heading"><u><b><i><b>Courses</b></i></b></u></h1>
	<div class="row">
	 <%
          Dbm dbm= new Dbm();
         String cmd="select * from course";
          ResultSet rs=dbm.dql(cmd);
         int count=1;
         out.print("<table class='table table-bordered table-hover'><tr style=''><th>SN.</th><th>Course Name</th><th>Duration</th><th>Fees</th><th>Discription</th><th>Intake</th></tr>");
         
         while(rs.next())
        	 {
        	   out.print("<tr><td>"+count+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
        	 count++;
        	 }
         out.print("</table>");
         %>
	</div>
	</div>
	<%@ include file="common-pages/footer.jsp" %>
	</div>
  </body>
</html>