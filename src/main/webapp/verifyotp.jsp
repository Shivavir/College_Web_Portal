<html>
  <head>
    <title>Verify OTP</title>
	<%@ include file="common-pages/links.jsp" %>
	
  </head>
  <body>
    <div id="outer" class="container-fluid">
	<%@ include file="common-pages/header.jsp" %>
	<%@ include file="common-pages/menu.jsp" %>
	
	
	<div id="main" class="row"  style="min-height:500px;padding:25px;">
	 <div class="col-sm-12 text-center h1 page-heading" style="background-color:#CACFD2">Verify OTP</div>
	 <div class="col-sm-2"> </div>
	 <div class="col-sm-8">
	 <div class="row">
	   <div class="col-sm-12 " style="padding:30px; border-radius:7px; min-height:350px; background-color:#7D6608;" >
	   <div class="col-sm-12 text-center" style="margin-bottom:20px;" >
	   
	   <img src="./imgs/userzonepic/2.png" width="15%" height="70px" />
	   
	   </div>
	   <form action="validateotp.jsp" method="post">
	     
		 
		 <div class="row">
	   <div class="col-sm-3" style="padding-top:9px; font-size:16px;">OTP</div>
	   <div class="col-sm-9">
	  <input type="txt" id="otp" name="otp" class="form-control" placeholder="Enter OTP here..." />
	   </div>
	   </div>
		 <div class="row"style="margin-top:20px;">
  <div class="col-sm-3"></div>
		  <div class="col-sm-9"  style="padding-top:9px; font-size:16px; color:black;">
		  
		  <input type="hidden" value="<%= request.getParameter("email") %>" name="email" />
		  <input type="hidden" value="<%= request.getParameter("utype") %>" name="utype" />
		  
		  <input type="submit"  value="Verify" class="btn btn-block btn-success" />
		  </div>
		 </div>		 
		 <div class="row"style="margin-top:20px;">
		 <div class="col-sm-3"></div>
		   <div class="col-sm-9">
		   
		   </div>
		 </div>
	   </form>
	   </div>
	 </div>
	 </div>
	 <div class="col-sm-2"></div>
	</div>
	<%@ include file="common-pages/footer.jsp" %>
	</div>
  </body>

</html>