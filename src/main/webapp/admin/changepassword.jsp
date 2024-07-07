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
        
        <div class="row" style="min-height: 550px;">
      <div class="col-sm-4"></div>
      <div class="col-sm-4">
        <h1 class="text-center text-primary">Uploads</h1>
        <div class="row">
            <div class="col-sm-12 bg-info" id="uploadbox" style="border-radius: 15px;">
                <form method="post" action="#">
                    <!--Title / Topic-->
                    <input type="text" name="uptopic" id="uptopic" placeholder="Topic or Title" class="form-control">
                    <!-- Description-->
                    
                    <textarea class="form-control" placeholder="Description ---" rows="5" style="resize: none"
                     name="uodesc" id="updesc"  ></textarea>
                     <div class="form-control">
                       <input type="file" name="upfile" id="upfile" />
                     </div>
                     <button type="submit" class="btn btn-block btn-success">Upload</button>
                </form>
            </div>
        </div>
      </div>
    </div>
       
        <!--Main Body End  -->
        <%@ include file="common/footer.jsp" %>

</body>
</html>