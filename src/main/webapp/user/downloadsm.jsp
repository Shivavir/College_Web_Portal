<%@ page import="java.sql.ResultSet"%>
<%@ page import="common.Dbm" %>
<html>
<head>
    
    <title>Study Materials</title>
     <%@ include file="common/links.jsp" %>
</head>
<body>
   <div class="container-fluid">
      <%@ include file="common/header.jsp" %>
        <div class="row" style="min-height: 600px;">
        <div class="col-sm-2"></div>
        
        <div class="col-sm-8">
         <h1 style="text-align:center; color: black; margin: 7px 0px 7px 0px;"><b><u>Download Study Materials</u></b></h1>
         <%
          Dbm dm= new Dbm();
         String cm="select * from studymaterial";
         ResultSet rl=dm.dql(cm);
         out.print("<table class='table table-bordered table-hover table-responsive'>"+
         "<tr style='background: silver; color: black; border: 2px dotted red;'><th>SN.</th><th>Subject</th><th>Topic</th>"+
         "<th>Description</th><th>date & time</th><th>Download</th></tr>");
         int count=1;
         while(rl.next())
        	 {  out.print("<tr style=' border: 2px dotted green;'><td>"+count+"</td><td>"+rl.getString(2)+"</td>"+
        	   "<td>"+rl.getString(3)+"</td><td>"+rl.getString(4)+"</td><td>"+rl.getString(6)+"</td>"+
        	"<td><a href='"+"../"+rl.getString(5)+"'download>Download</a></td></tr>");
        	   count++;
        	 }
         out.print("</table>");
         %>
        </div>
       <div class="col-sm-2">
        </div>
        </div>
        <!--Main Body End  -->
        <%@ include file="common/footer.jsp" %>
</body>
</html>