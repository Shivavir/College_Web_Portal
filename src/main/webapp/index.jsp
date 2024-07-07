<%@page import="java.sql.ResultSet"%>
<%@page import="common.Dbm"%>
<html>
  <head>
    <title>College Web Portal</title>
    <script src="jq/jquery-3.6.0.min.js"></script>
	<%@ include file="common-pages/links.jsp" %>
	
	<style>
	.row{
	margin-right:0px;margin-left:0px;}
	
	#btnenq
	{
	  position:fixed;
	  top: 225px;
	  left:5px;
	  background-color:#483D10 ;
	  color:white;
	  writing-mode:;
	}
	</style>
	
  </head>
  <body style="margin-right: 0.5px; margin-left: 0.5px;">
    <div id="outer" class="container-fluid" style="padding: 0px;"> 
    
    <%@ include file="common-pages/header.jsp" %>
	<%@ include file="common-pages/menu.jsp" %>
	
	</div>
	
	<div id="slider" class="row" >
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
	<li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="imgs/slider/sv.jpg" alt="Chania" style="width:100%; height: 495px;" >
      <div class="carousel-caption">
        <h3>CSE Block</h3>
        <p>Computer Science & Engineering lecture room</p>
      </div>
    </div>

    <div class="item">
      <img src="imgs/slider/kcnit campus.jpeg" alt="Chicago">
      <div class="carousel-caption">
        <h3>Main Block</h3>
        <p>KCNIT Campus</p>
      </div>
    </div>

    <div class="item">
      <img src="imgs/slider/6.jpg" alt="New York">
      <div class="carousel-caption">
        <h3>Engineering</h3>
        <p>Engineering Block</p>
      </div>
    </div>
	<div class="item">
      <img src="imgs/slider/7.jpg" alt="New York">
      <div class="carousel-caption">
        <h3>Faculty</h3>
        <p>Faculty Block & Admission Cell</p>
      </div>
    </div>
  </div>
   
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <!-- <span class="glyphicon glyphicon-chevron-left"></span> -->
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <!-- <span class="glyphicon glyphicon-chevron-right"></span> -->
    <span class="sr-only">Next</span>
  </a>
</div>
	</div>
	<div id="main" class="row"  style="min-height: 600px;">
	<!-- Button to Open the Modal -->
<button type="button" id="btnenq" class="btn btn-orange" data-toggle="modal" data-target="#myModal">
Enquiry </button>

<!-- The Modal -->	
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h2 class="modal-title"style="text-align:center;"><b><i><u>Enquiry</u></i></b></h2>
        <p id="presult"></p>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
	  <label>Name</label>
       <input type="text"  placeholder="Enter name" id="enqname" class="form-control"/>
	   
	   <label>Email </label>
       <input type="email" placeholder="Enter email" id="enqemail" class="form-control"/>
	   
	   <label>Mobile no.</label>
       <input type="number"  placeholder="Enter Mobile no." id="enqmob" class="form-control"/>
	   
	   <label>Message</label>
       <textarea placeholder="Your message...." id="enqmsg" class="form-control" rows="5" style="resize:none;"></textarea>	   
      </div>
       
      <!-- Modal footer -->
      <div class="modal-footer">
	  <button class="btn btn-success" id="btnsendenq">Send Enquiry </button>
        <button type="button" id="btnclose" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

      <div class="row" style=";padding-top: 5px; background: rgba(230, 229, 227, 0.874); padding-bottom: 5px;">
      <%
        Dbm dbm=new Dbm();
        String cmd="select * from notification order by notification_dt desc";
        ResultSet rs=dbm.dql(cmd);
        out.print("<marquee onmouseover='stop()' onmouseout='start()'>");
        while(rs.next())
        {
        	out.print("<img src='imgs/newnotification.gif' height=35px; />&nbsp;&nbsp;&nbsp;<a style='text-decoration:none; color:black; font-size:20px;' href='"+rs.getString(4)+"'>"+rs.getString(2)+"</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
        	
        }
        out.print("</marquee>");
      %>
       
      </div>
      
      
	<p class="para" >
	<h2  class="page-heading"><u><i><b>KCNIT MISSION</b></i></u></h2>
	<ul class="listed" style="text-align:justify; ">
	<p style= "font-size: 23px; ">
	We dedicate and commit ourselves to achieve, 
	sustain and foster excellence in technical education. To this, 
	we will pursue continuous development of infrastructure and enhance state-of-the art equipment to 
	provide our students a technologically up-to-date and intellectually inspiring environment of learning, 
	creativity, professional activity and inculcate ethical and moral values in them. Education and training 
	in modern technology areas. Promotion of self development among the students.
	</p>
<br/>
    </ul>
	</p>
	<p class="para">
	<h2 class="page-heading"><u><i><b>KCNIT VISION</b></i> </u></h2>
	 <ul class="listed" style="text-align:justify;" >
	 <br/>
	 <p style="font-size: 23px; ">
	 To contribute to the sustainable development and improvement of society.<br/>
	 To emerge as a "Centre of Excellence" offering technical education and professional 
	 opportunities of very high standards to students, develop the total personality of the 
	 individual and instil high levels of discipline and strive to set global standards, 
	 making our students technologically superior and ethically strong, who in turn shall 
	 contribute the advancement of our society, nation and human kind.
	 </p>

	 </ul>
	</p>
	</div>
	<%@ include file="common-pages/footer.jsp" %>
	</div>
	<div>
  </body>
</html>
  <script>
     $(document).ready(function (){
    	 $("#btnsendenq").click(function (){
    		 var name = $("#enqname").val().trim();
    		 var email = $("#enqemail").val().trim();
    		 var mob = $("#enqmob").val().trim();
    		 var msg= $("#enqmsg").val().trim();
    		 var obj = {Name: name, Email: email, MobNo: mob, Message: msg };
    		 $.ajax({
     			type: "POST",
     			url: "saveenquiry.jsp",
     			data: obj,
     			success: function(result){
     				if(result.trim()=="SUCCESS")
     					{
     					$("#presult").fadeIn(200).text("Your enquiry saved Successfully.")
     					.fadeOut(6000,function(){
     						$("#btnclose").trigger("click")
     					});
     					}
     				else
     					{
     					$("#presult").fadeIn(200).text("Sorry! unable to save your enquiry.")
     					.fadeOut(6000);
     					}
     			}
     		 });
    	 });
     });
  </script>
  
  