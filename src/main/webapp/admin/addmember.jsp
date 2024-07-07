<%@page import="java.sql.ResultSet"%>
<%@page import="common.Dbm"%>
<html>
<head>
    
    <title>Change Password</title>
     <%@ include file="common/links.jsp" %>
     <style>
       .form-control
       {
         margin: 30px 0px;
       }
     </style>
</head>
<body>
    
    <div class="container-fluid">
       <%@ include file="common/header.jsp" %>
      
        <!-- upload file -->
        
        <div class="row" style="min-height: 550px;">
      <div class="col-sm-4"></div>
      <div class="col-sm-4">
        <h1 class="text-center text-primary">Add Faculty</h1>
        <div class="row">
            <div class="col-sm-12" id="uploadbox" style="border-radius: 15px; background-color:rgba(71, 129, 190, 0.891);">
                <form method="post" action="savemember.jsp" enctype="multipart/form-data">
                    <!--Title / Topic-->
                      <input type="text" name="name"  placeholder="Name" class="form-control" />
                    <input type="text" name="qualification"  placeholder="Qualification" class="form-control" />
                    <input type="text" name="experience"  placeholder="expeience" class="form-control" />
                    <input type="text" name="faculty"  placeholder="faculty" class="form-control" />
                    <input type="text" name="designaion"  placeholder="Designation" class="form-control" />
                     <div class="form-control">
                     Picture &nbsp;&nbsp;&nbsp;  <input type="file" name="upfile" id="upfile" />
                     </div>
                     <button type="submit" class="btn btn-block btn-success">Add</button>
                </form>
            </div>
        </div>
      </div>
    </div>
       
            <div class="row" style="min-height: 600px;">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
         <br/><br/><h1 style="text-align:center;  margin: 7px 0px 7px 0px;">All Members</h1>
 <br/>        <%
          Dbm dbm= new Dbm();
         String cmd="select * from faculty";
          ResultSet rs=dbm.dql(cmd);
         int count=1;
         out.print("<table class='table table-bordered table-hover'><tr style=''><th>SN.</th><th>Picture</th><th>Name</th><th>Experience</th><th>Faculy</th><th>Designation</th><th>Qualificaion</th><th>Delete</th></tr>");
         
         while(rs.next())
        	 {
        	   out.print("<tr><td>"+count+"</td><td><img src='.."+rs.getString(6)+
        			   "' heigh='50px' width='50px'/></td><td>"+rs.getString(2)+"</td><td>"
        	   +rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"
        					   +rs.getString(8)+"</td><td><a href='deletemember.jsp?id="
        	   +rs.getString(1)+"'>Delete</a></td></tr>");
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