<html>
<head>
    
    <title> Student Dashboard</title>
     <%@ include file="common/links.jsp" %>
</head>
<body>
    
    <div class="container-fluid">
       <%@ include file="common/header.jsp" %>
        
        <!--Main Body Start  -->
        <div class="row" style="min-height: 600px;">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row text-white align-items-center" style="padding: 0% 0% 0% 5%">
                    <a href="profile.jsp"class="col-sm-3 navbox"><i class="fa fa-user h1"></i> <div class="h5">Profile</div></a>
                    <a href="feedback.jsp"class="col-sm-3 navbox"><i class="fa fa-edit h1"></i> <div class="h5">Feedback</div></a>
                    <a href="#"class="col-sm-3 navbox"><i class="fa fa-upload h1"></i> <div class="h5">Upload Assignment/Task</div></a>
                </div>
               
                <div class="row text-white align-items-center" style="padding: 0% 0% 0% 5%">
                    <a href="downloadsm.jsp"class="col-sm-3 navbox"><i class="fa fa-download h1"></i> <div class="h5">Download Study Materials</div></a>
                    <a href="changepassword.jsp"class="col-sm-3 navbox"><i class="fa fa-key h1"></i> <div class="h5">Change your Password</div></a>
                    <a href="../common-pages/logout.jsp"class="col-sm-3 navbox"><i class="bi bi-box-arrow-right h1"></i> <div class="h5">Log Out</div></a>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <!--Main Body End  -->
        <%@ include file="common/footer.jsp" %>

</body>
</html>