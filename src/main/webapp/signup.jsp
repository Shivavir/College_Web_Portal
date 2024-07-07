<html>
  <head>
    <title>Login</title>
	<%@ include file="common-pages/links.jsp" %>
	
  </head>
  <body>
    <div id="outer" class="container-fluid">
	<%@ include file="common-pages/header.jsp" %>
	<%@ include file="common-pages/menu.jsp" %>
	
	
	<div id="main" class="row"  style="min-height:500px;padding:25px;">
	 <div class="col-sm-12 text-center h1 page-heading" style=""><b>Log In</b></div>
	 <div class="col-sm-2"> </div>
	 <div class="col-sm-8">
	 <div class="row">
	   <div class="col-sm-12 " style="padding:30px; border-radius:7px; min-height:350px; background: rgba(71, 129, 190, 0.891);" >
	   <div class="col-sm-12 text-center" style="margin-bottom:20px;" >
	   
	   <img src="./imgs/kcnit.webp" width="15%" height="90px" style= "border-radius: 25px;" />
	   
	   </div>
	   <form action="validateLogin.jsp" method="post">
	     
		 
		 <div class="row">
	   <div class="col-sm-3" style="padding-top:9px; font-size:16px;"><b>User Type:- </b></div>
	   <div class="col-sm-9">
	  <select name="utype" id="utype" class="form-control">
	   <option value="">--- Select --- </option>
	   <option value="user"> Student </option>
	   <option value="admin"> Faculty Member </option>
	    </select>
          
		
	   </div>
	   </div>
		<div class="row" style="margin-top:20px;">
		   <div class="col-sm-3" style="padding-top:9px; font-size:16px;"><b>User Id:-</b></div>
		<div class="col-sm-9">
		
		<input type="text" id="userid" name="uemail" class="form-control"  placeholder= "example@email.com" /></div>
		</div>
		
		<div class="row" style="margin-top:20px;">
		   <div class="col-sm-3" style="padding-top:9px; font-size:16px;"><b>User Password:-</b></div>
		<div class="col-sm-9">
		
		<input type="password" id="userpass" name="upwd" class="form-control" placeholder= "passward" /></div>
		</div>
		 
		 <div class="row"style="margin-top:20px;">

          <div class="col-sm-3"></div>
		  <div class="col-sm-9"  style="padding-top:9px; font-size:16px; color:black;">
		  
		  <input type="submit" class="btn btn-block btn-success" />
		  </div>
		  
		 </div>		 
		 
		 <div class="row"style="margin-top:20px;">
		 
		 <div class="col-sm-3"></div>
		 <div class="col-sm-9" style="color:white;">
		 <div class="col-sm-5">
		 
		 <a style="color:skyblue;" href="forgetpassword.jsp"><b> Forgot password ?....</b></a>
		 
		 </div>
		
		  <div class="col-sm-4">
		  new user :&nbsp;<a style="color:skyblue; text-decoration:none;" href="registration.jsp"><b> Sign up</b> </a>
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