<html>
  <head>
    <title>Forget Password</title>
	<%@ include file="common-pages/links.jsp" %>
	
  </head>
  <body>
    <div id="outer" class="container-fluid">
	<%@ include file="common-pages/header.jsp" %>
	<%@ include file="common-pages/menu.jsp" %>
	
	
	<div id="main" class="row"  style="min-height:500px;padding:25px;">
	 <div class="col-sm-12 text-center h1 page-heading" style="background-color:#CACFD2"><b>Forget Password</b></div>
	 <div class="col-sm-2"> </div>
	 <div class="col-sm-8">
	 <div class="row">
	   <div class="col-sm-12 " style="padding:30px; border-radius:7px; min-height:350px; background-color: rgba(71, 129, 190, 0.891);" >
	   <div class="col-sm-12 text-center" style="margin-bottom:20px;" >
	   
	   <img src="./imgs/kcnit.webp" width="15%" height="90px" style= "border-radius: 25px;" />
	   
	   </div>
	   <form action="sendotp.jsp" method="post">
	     
		 
		 <div class="row">
	   <div class="col-sm-3" style="padding-top:9px; font-size:16px;"><b>User Type:-</b></div>
	   <div class="col-sm-9">
	  <select name="utype" id="utype" class="form-control">
	   <option value="">--- Select User type --- </option>
	   <option value="user"> User </option>
	   <option value="admin"> Admin </option>
	    </select>
          
		
	   </div>
	   </div>
		<div class="row" style="margin-top:20px;">
		   <div class="col-sm-3" style="padding-top:9px; font-size:16px;"><b>User Id:-</b></div>
		<div class="col-sm-9">
		
		<input type="text" id="userid" name="uemail" class="form-control"  placeholder= "example@email.com" /></div>
		</div>
		 <div class="row"style="margin-top:20px;">
  <div class="col-sm-3"></div>
		  <div class="col-sm-9"  style="padding-top:9px; font-size:16px; color:black;">
		  
		  <input type="submit"  class="btn btn-block btn-success" />
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