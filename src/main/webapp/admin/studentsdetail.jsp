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
    <br/>        <h1 style="text-align: center; color: black; marginr: 1% 0px 1% 0px;">Students Details</h1>
            <div class="row" style="min-height: 600px;">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
        <form acion="studentsdetail.jsp">
	<center>
	<input type="text" name="searchtxt" class="form-control" style="width:500px; display: inline;"
	placeholder="Search by name, email,course, mobile number or address..."/>
	        <input type="submit" value="Search" class="btn btn-info form-control"style="width:100px; display: inline;"/>	
	</center>
        </form> 
         <%
          Dbm dbm= new Dbm();
         String searchtxt=request.getParameter("searchtxt");
         String cmd="";
         if(searchtxt!=null)
         {
        	 cmd="select * from student_master where emailid like'%"+searchtxt+
        			 "%' or name like'%"+searchtxt+"%' or address like'%"+searchtxt
        			 +"%' or mobileno like'%"+searchtxt+"%' or course like'%"+searchtxt
        			 +"%' order by reg_dt desc";
                          
         }
         else{
        	 cmd="select * from student_master order by reg_dt desc";
         }
          ResultSet rs=dbm.dql(cmd);
         int count=1;
         out.print("<table class='table table-bordered table-hover'><tr style=''><th>SN.</th><th>"+
         "Picture</th><th>Name</th><th>Gender</th><th>Course</th><th>Email</th><th>Mobile Number</th>"+
         "<th>Address</th><th>Registration Date Time</th></tr>");
         
         while(rs.next())
        	 {
out.print("<tr><td>"+count+"</td><td><img src='../imgs/userzonepic/"+rs.getString(7)+
"' heigh='50px' width='50px'/></td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+
"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"<a href='sendemail.jsp?email="
+rs.getString(4)+"&subject=Mail from Sanskar Admin' style='text-decoration:none'> Reply</a></td><td>"
+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(8)+"</td></tr>");
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