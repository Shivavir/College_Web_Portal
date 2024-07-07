 <%
  if(session.getAttribute("aid")==null){
	  out.print("<script>alert('Unauthorised access please login to visit this page.');"+
  "window.location.href='../signup.jsp';</script>");
  }
 
%>
 <!-- Header Start -->
    
        <div id="Header" class="row bg-primary" >
            <!-- LOGO -->
            <div class="col-sm-2 " style="min-height: 100px; background-color: rgba(230, 229, 227, 0.874); ">
                <img src="../imgs/kcnit.webp" width="70%"  style="height: 100px;  border-radius: 30%;"/>
            </div>

            <!-- Title/Project Name -->
            <div class="col-sm-8 text-white" style="min-height: 100px; padding-top: 20px; background-color: rgba(230, 229, 227, 0.874);" >
                <span style="color: black;">
                <strong><h3><b><i><center>Admin Panel</cennter><br/>Kali Charan Nigam Institute of Technology</i></b></h3></strong></span>
            </div>
            <!-- Profile Pic and Username -->
            <div class="col-sm-2 text-center text-white" style="min-height:100px; padding-top: 15px; background-color: rgba(230, 229, 227, 0.874);">
                <img src="../imgs/kcnit.webp" id="upic"/>
                <div id="uname" style="color: black;"><b>Faculty</b></div>
            </div>
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
                        <a class="nav-link" href="adashboard.jsp"><i class="bi bi-house-door"></i> Dashboard</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="enquiry.jsp"><i class="bi bi-search"></i> Enquiry</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="sendsms.jsp"><i class="fa fa-mobile-phone"></i> Send SMS</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="sendemail.jsp"><i class="fa fa-envelope"></i> Send email</a>
                      </li>
                       <li class="nav-item">
                        <a class="nav-link" href="notification.jsp"><i class="fa fa-bell"></i> Notification</a>
                      </li>
                  
                      <!-- Dropdown -->
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                            <i class="bi bi-gear"></i> Setting
                        </a>
                        <div class="dropdown-menu">
                        <!--  
                          <a class="dropdown-item" href="profile.jsp"><i class="bi bi-pencil"></i> My Profile</a>
                          -->
                          <a class="dropdown-item" href="changepassword.jsp"><i class="bi bi-key"></i> Change Password</a>
                          <a class="dropdown-item" href="../common-pages/logout.jsp"><i class="bi bi-box-arrow-right"></i> Logout</a>
                        </div>
                      </li>
                    </ul>
                  </nav>
            </div>
        </div>
        <!-- Navbar End -->