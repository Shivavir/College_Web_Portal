<html>
<head>
    
    <title>Profile</title>
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

        <!-- File upload end -->
        
        <div class="row" style="margin: 2%; min-height: 370px;">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 border border-primary rounded  bg-light" id="profilebox" style="padding:2% ;">
                <h1 class="text-center text-primary">My Profile</h1>
                  <%
                   Dbm d=new Dbm();
                  String query="select * from student_master where emailid='"+session.getAttribute("uid")+"'";
                 // out.print(query);
                  ResultSet r=d.dql(query);
                  while(r.next())
                  {  %>
                	
                <form method="post" action="updateprofile.jsp" enctype="multipart/form-data">
                <div class="row">
                    
                    <!-- Profile Picture -->

                        <div class="col-sm-4 ">
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <img src="../imgs//userzonepic/<%= r.getString(7) %>" id="userpic" />
                                </div>
                            </div>
                             <div style="min-height: 75px;margin:20px 0px;">
                                    <input type="file" name="usernpic" id="usernpic">
                            </div>
                        </div>
                        <!-- Profile Details -->
                        <div class="col-sm-8">
                            <span class="form-control" style="cursor: not-allowed;"><%= r.getString(4) %></span>
                            <!-- Name -->
                            <input type="text" value="<%= r.getString(1) %>" class="form-control" placeholder="Name" name="txtname" id="txtname" >
                            <!-- Gender -->
                            <div class="form-control">
                            <%
                             if(r.getString(2).equals("male"))
                            {%>
                                <input type="radio" value="male" name="gender" checked >&nbsp; Male&nbsp;&nbsp; 
                                <input type="radio" value="female" name="gender" > Female&nbsp;&nbsp; 
                                <input type="radio" value="other" name="gender" > Other&nbsp;&nbsp;
                                <%  }
                             else if(r.getString(2).equals("female"))
                             { %>
                              <input type="radio" value="male" name="gender" >&nbsp; Male&nbsp;&nbsp; 
                                <input type="radio" value="female" name="gender" checked > Female&nbsp;&nbsp; 
                                <input type="radio" value="other" name="gender" > Other&nbsp;&nbsp;
                                <%}
                             else{%>
                            <input type="radio" value="male" name="gender" >&nbsp; Male&nbsp;&nbsp; 
                            <input type="radio" value="female" name="gender" > Female&nbsp;&nbsp; 
                            <input type="radio" value="other" name="gender" checked > Other&nbsp;&nbsp;
                            <%
                            }%>
                            </div>
                            <input type="text" value="<%= r.getString(3) %>" class="form-control" name="course" />
                            <input type="text" value="<%= r.getString(5) %>" class="form-control" name="mobno" />
                            <textarea class="form-control" name="address" id="txtname"><%= r.getString(6) %></textarea>
                            <input type="submit" class="btn btn-info" value="Update" />
                        </div>
                            
                    </div>
                </form>
                <%
                      }
                %>
                </div>
            <div class="col-sm-2"></div>
        </div>
        
        <!--Main Body End  -->
        <%@ include file="common/footer.jsp" %>

</body>
</html>