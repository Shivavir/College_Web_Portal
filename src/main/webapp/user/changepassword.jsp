<html>
<head>
    
    <title>Change Password</title>
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
     
     <!-- Change Password -->
     
      <div class="row" style="min-height: 600px; margin-top: 25px;">
       <div class="col-sm-4"></div>
       <div class="col-sm-4">
         <h1 class="text-center"><u>Change Passsword</u></h1>
        
        <div class="row" style="margin: 25px 0px;">
          <div class="col-sm-12" id="changebox" style="border-radius: 15px; background-color:rgba(71, 129, 190, 0.891);" ">
          
          <form method="post" action="changepass.jsp">
          <!-- Old Password -->
            <input type="password" placeholder="Old Password" name="oldpass" class="form-control" id="oldpass" />
            <!-- New Password -->
            <input type="password" placeholder="New Password" name="newpass" class="form-control" id="newpass" />
             <!-- Confirm Password -->
            <input type="password" placeholder="Confirm New Password" name="confpass" class="form-control" id="confpass" />
            
            <button class="btn btn-success btn-block" type="submit">Change Password</button>
          </div>
          </form>
         </div>
       </div>
      </div>  

        
        <!-- upload file -->
        
       
       
        <!--Main Body End  -->
        <%@ include file="common/footer.jsp" %>

</body>
</html>