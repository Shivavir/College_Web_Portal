<html>
<head>
    
    <title>Study Materials</title>
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
      
        <!-- upload file -->
        
        <div class="row" style="min-height: 550px;">
      <div class="col-sm-4"></div>
      <div class="col-sm-4">
        <h1 class="text-center text-primary">Study Materials</h1>
        <div class="row">
            <div class="col-sm-12" id="uploadbox" style="border-radius: 15px; background-color: rgba(71, 129, 190, 0.891);">
                <form method="post" action="savestudymaterial.jsp" enctype="multipart/form-data">
                    <!--Title / Topic-->
                      <input type="text" name="upsubject" id="upsubject" placeholder="Name of Subject" class="form-control" />
                    <input type="text" name="uptopic" id="uptopic" placeholder="Topic or Title" class="form-control" />
                    <!-- Description-->
                    
                    <textarea class="form-control" placeholder="Description ---" rows="5" style="resize: none"
                     name="updesc" id="updesc"  ></textarea>
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