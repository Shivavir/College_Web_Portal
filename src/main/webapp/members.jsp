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
	
	
		<div id="main" class="row" style="min-height: 600px; padding: 1.5% 10% 1.5% 10% ; rgb(253, 244, 244);">
	<h1 class="page-heading" ><u><b><i><b>Faculty</b></i></b></u></h1>
		     <%
          Dbm dbm= new Dbm();
         String cmd="select * from faculty";
          ResultSet rs=dbm.dql(cmd);
         int count=1;
         out.print("<table class='table table-bordered table-hover'><tr style=''><th>SN.</th><th>Picture</th><th>Name</th><th>Experience</th><th>Faculy</th><th>Designation</th><th>Qualificaion</th></tr>");
         
         while(rs.next())
        	 {
        	   out.print("<tr><td>"+count+"</td><td><img src='."+rs.getString(6)+
        			   "' heigh='50px' width='50px'/></td><td>"+rs.getString(2)+"</td><td>"
        	   +rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"
        					   +rs.getString(8)+"</td></tr>");
        	 count++;
        	 }
         out.print("</table>");
         %>
		
		
		</div>
	<%@ include file="common-pages/footer.jsp" %>
	</div>
  </body>

</html>