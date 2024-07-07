<html>
  <head>
    <title>Create New Password</title>
	<%@ include file="common-pages/links.jsp" %>
	
  </head>
  <body>
    <div id="outer" class="container-fluid">
	<%@ include file="common-pages/header.jsp" %>
	<%@ include file="common-pages/menu.jsp" %>
	
	
	<div id="main" class="row"  style="min-height:500px;padding:25px;">
	 <div class="col-sm-12 text-center h1 page-heading" style="background-color:#CACFD2">Create New Password</div>
	 <div class="col-sm-2"> </div>
	 <div class="col-sm-8">
	 <div class="row">
	   <div class="col-sm-12 " style="padding:30px; border-radius:7px; min-height:350px; background-color:magenta;" >
	   <div class="col-sm-12 text-center" style="margin-bottom:20px;" >
	   
	   <img src="./imgs/userzonepic/2.png" width="15%" height="70px" />
	   
	   </div>
	   <form action="createnewpassword.jsp" method="post">
		 <div class="row">
	 
	   <div class="col-sm-9">
	   </div>
	   </div>
		<div class="row" style="margin-top:20px;">
		   <div class="col-sm-3" style="padding-top:9px; font-size:16px;">Password :-</div>
		<div class="col-sm-9">
		
		<input type="password" id="userid" name="pwd" class="form-control"  placeholder= "passward" /></div>
		</div>
		
		<div class="row" style="margin-top:20px;">
		   <div class="col-sm-3" style="padding-top:9px; font-size:16px;">Confirm Password:-</div>
		<div class="col-sm-9">
		
		<input type="password" id="userpass" name="upwd" class="form-control" placeholder= "Confirm passward" /></div>
		</div>
		 
		 <div class="row"style="margin-top:20px;">

          <div class="col-sm-3"></div>
		  <div class="col-sm-9"  style="padding-top:9px; font-size:16px; color:black;">
		  
		   <input type="hidden" value="<%= request.getParameter("email") %>" name="email" />
		  <input type="hidden" value="<%= request.getParameter("utype") %>" name="utype" />
		  
		  
		  <input type="submit" value="Create" class="btn btn-block btn-success" />
		  </div>
		  
		 </div>		 
		 
		 <div class="row"style="margin-top:20px;">
		 
		 <div class="col-sm-3"></div>
		 <div class="col-sm-9" style="color:white;">
		 <div class="col-sm-5">
		 
		 </div>
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