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
        <div class="row" style="min-height: 600px;">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
         <h1 style="text-align:center; margin: 2.5% 0px 2.5% 0px;"><i>Notification Management</i></h1>
            
            <div class="row" style="width: 100%;">
              <div class="col-sm-3"></div>
              <div clas="col-sm-6" style="background: rgba(71, 129, 190, 0.891); border:2px solid black; border-radius:15px; margin-left:140px; width:70%;">
                <form action="savenotification.jsp">
                <h3 style="text-align: center; color: white; margin:1% 0 1% 0 ; ">Add Notifications</h3>
                
                <div class="form-group col-sm-12">
                <i class="fa fa-bell" aria-hidden="true"></i>&emsp;<label>Notification :</label><br>
                <input type="text" class="form-control" name="notification" placeholder="Enter Notification Here..." />
                </div>
                
                <div class="form-group col-sm-12">
                <i class="fa fa-location-arrow" aria-hidden="true"></i>&emsp;<label>Link :</label><br>
                <input type="text" class="form-control" name="link" placeholder="Add Notification Here..." />
                </div>
                
                <div class="col-sm-12 text-center">
                <input type="submit" name="submit" value="Send Notification" style="color: green; background:white; width:250px; height:40px;border:none; font-weight:bold; border-radius:8px;" />
                </div>
                
                </form>
              </div>
              <div class="col-sm-3"></div>
            </div>
            <br/><hr style="background: black;"></br/>
            <h1 style="text-align: center; color: black; marginr: 1% 0px 1% 0px;">All Notifications</h1>
         </div>
          <div class="col-sm-2"></div>
        </div>
            <div class="row" style="min-height: 600px;">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
         <%
          Dbm dbm= new Dbm();
         String cmd="select * from notification order by notification_dt desc";
          ResultSet rs=dbm.dql(cmd);
         int count=1;
         out.print("<table class='table table-bordered table-hover'><tr style=''><th>SN.</th><th>Notification</th><th>Link</th><th>date Time</th><th>Delete</th></tr>");
         
         while(rs.next())
        	 {
        	   out.print("<tr><td>"+count+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(3)+"</td><td><a href='deletenotification.jsp?id="+rs.getString(1)+"'>Delete</a></td></tr>");
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