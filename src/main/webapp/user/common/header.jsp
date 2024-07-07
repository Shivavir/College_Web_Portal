 <%@page import="common.Dbm"%>
<%@page import="java.sql.ResultSet"%>
 
<%
  if(session.getAttribute("uid")==null){
	  out.print("<script>alert('Unauthorised access please login to visit this page.');"+
  "window.location.href='../signup.jsp';</script>");
  }
%>
 <!-- Header Start -->
        <div id="Header" class="row bg-primary" >
            <!-- LOGO -->
            <div class="col-sm-2 " style="min-height: 100px; background-color: rgba(230, 229, 227, 0.874);">
                <img src="../imgs/kcnit.webp" width="70%"  style="height: 100px;  border-radius: 30%;"/>
            </div>

            <!-- Title/Project Name -->
            <div class="col-sm-8 text-white" style="min-height: 100px; padding-top: 20px; background-color: rgba(230, 229, 227, 0.874);" >
               <span style="color: black;">
                <center><strong><h1><b><i>Kali Charan Nigam Institute of Technology</i></b></h1></strong></span></center>
            </div>
            
            <!-- Profile Pic and Username -->
            
            <%
        Dbm dbm=new Dbm();
        String cmd="select * from student_master where emailid='"+session.getAttribute("uid")+"'";
        ResultSet rs=dbm.dql(cmd);
        
        while(rs.next())
        {  
          %>
        	<div class="col-sm-2 text-center text-white" style="min-height: 100px; background-color: rgba(230, 229, 227, 0.874); padding-top: 5px;">
        	<img src="..//imgs/userzonepic/<%= rs.getString(7) %>" id="upic" />
        	<div id="uname"><%= rs.getString(1) %></div>	
        	</div>
        <%  
           }
        %>
         
            
        </div>
        <!-- Header Ends -->
        <!-- Navbar Start -->
        <div class="row">
            <div class="col-sm-12" style="margin: 0px; padding: 0px;">
                <nav class="navbar navbar-expand-sm navbar-dark " style="background-color: rgba(8, 83, 137, 0.898);">
                    <!-- Brand -->
                    <!-- Links -->
                    <ul class="navbar-nav">
                      <li class="nav-item">
                        <a class="nav-link" href="udashboard.jsp"><i class="bi bi-house-door"></i> Dashboard</a>
                      </li>
                  <!--      <li class="nav-item">
                        <a class="nav-link" href="#"><i class="bi bi-search"></i> Enquiry</a>
                      </li> -->
                      <li class="nav-item">
                        <a class="nav-link" href="downloadsm.jsp"><i class="bi bi-send"></i> Study Materials</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="profile.jsp"><i class="bi bi-bag"></i> My Profile</a>
                      </li>
                  
                      <!-- Dropdown -->
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                            <i class="bi bi-gear"></i> Setting
                        </a>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="profile.jsp"><i class="bi bi-pencil"></i> My Profile</a>
                          <a class="dropdown-item" href="changepassword.jsp"><i class="bi bi-key"></i> Change Password</a>
                          <a class="dropdown-item" href="../common-pages/logout.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
                        </div>
                      </li>
                    </ul>
                  </nav>
            </div>
        </div>
        <!-- Navbar End -->