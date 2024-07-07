<html>
<head>
    
    <title>Admin Dashboard</title>
     <%@ include file="common/links.jsp" %>
</head>
<body>
    
    <div class="container-fluid">
       <%@ include file="common/header.jsp" %>
        
        <!--Main Body Start  -->
        <div class="row" style="min-height: 600px; ">
            <div class="col-sm-1"></div>
            <div class="col-sm-10" style="color: rgba(71, 129, 190, 0.891);">
                <div class="row text-white align-items-center" style="padding: 0% 0% 0% 5%">
                    <a href="enquiry.jsp"class="col-sm-3 navbox"><i class="bi bi-search h1"></i> <div class="h5">Enquiry</div></a>
                    <a href="astudymaterial.jsp"class="col-sm-3 navbox"><i class="fa fa-upload h1"></i> <div class="h5">Upload Study Materials</div></a>
                    <a href="feedback.jsp"class="col-sm-3 navbox"><i class="fa fa-edit h1"></i> <div class="h5">Feedback</div></a>
                </div>
               
                <div class="row text-white align-items-center" style="padding: 0% 0% 0% 5%">
                    <a href="addcourse.jsp"class="col-sm-3 navbox"><i class="fa fa-folder-open h1"></i> <div class="h5">Add Courses</div></a>
                    <a href="studentsdetail.jsp"class="col-sm-3 navbox"><i class="fa fa-file h1"></i> <div class="h5">Students Detail</div></a>
                    <a href="addmember.jsp"class="col-sm-3 navbox"><i class="fa fa-handshake h1"></i> <div class="h5">Add Faculy/Team</div></a>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <!--Main Body End  -->
        <%@ include file="common/footer.jsp" %>

</body>
</html>