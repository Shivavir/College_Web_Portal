<html>
  <head>
    <title>Student registration</title>
	<%@ include file="common-pages/links.jsp" %>
	<style>
    .controls .form-control
    {
        margin-top:15px;
		font-family:Times New Roman;
		font-weight: bold;
    }
	.err
	{
	  color:red;
	}
</style>
<script>
    $(document).ready(function () { 
        var x = $("#presponse").text().trim();
        if (x.length > 0)
            $("#presponse").fadeIn(150).delay(3500).fadeOut(1500);
    });
	function validateForm()
	{
	  var name,mobno,course,email,pass,confpass,spnm,spmb,spcrs,spem,status=true;
	    
		 name=document.getElementById("Name").value;
		 mobno=document.getElementById("MobileNo").value;
		 course=document.getElementById("Courses").value;
		 email=document.getElementById("EmailId").value;
	     spnm=document.getElementById("spname");
		 spmb=document.getElementById("spmob");
		 spcrs=document.getElementById("spcourse");
		 spem=document.getElementById("spemail");
		 
		 
		 spnm.innerText="";
		 spmb.innerText="";
		 spcrs.innerText="";
		 spem.innerText="";
		
		 //Validate name  
		   
		   if(name.length==0)
		   {
		     spnm.innerText="Please enter your name.";
			 status=false;
		   }
		   else if(name.length<2)
		   {
		     spnm.innerText="Please enter a valid name.";
			 status=false;
		   }
		   else if(name.indexOf(' ')<2)
		   {
		     spnm.innerText="please enter full name.";
			 status=false;
		   }
		  
		   //Validate mobno.
			 
			 if(mobno.length==0)
			 {
			   spmb.innerText="Please enter your mobile no. ";
			   status=false;
			 }
			 else if(mobno.length!=10)
			 {
			   spmb.innerText="Invalid mobile no. ";
			   status=false;
			 }
			 else
			 {
			  var fdigit=parseInt(mobno.charAt(0));
			  if(!(fdigit>=6 && fdigit<=9))
			  {
			  spmb.innerText="Please enter a valid mobile no. ";
			  status=false;
			  }
			  
			    //Validate Course.
		      
			 if(course.length==0)
			 {
			   spcrs.innerText="Please select a course name.";
			   status=false;
			 }
			 
			  //Validate email id
			  
			  if(email.length==0)
			  {
			    spem.innerText="please enter your email Id.";
				status=false;
			  }
			 
			 
		  } 
	  return status;
	}
</script> 
<script src="https://www.google.com/recaptcha/api.js" async defer></script> 


  </head>
  <body>
    <div id="outer" class="container-fluid">
	<%@ include file="common-pages/header.jsp" %>
	<%@ include file="common-pages/menu.jsp" %>
	
	
	<div id="main" class="row"  style="min-height:600px;">
	   <div class="col-sm-12">
	    <div class="row" >
    <div class="col-sm-2"></div>
    <div class="col-sm-8" style="background-color: rgba(71, 129, 190, 0.891);
            margin-top:20px; margin-bottom:20px; border-radius: 15px; padding-top:20px; min-height:400px;
            padding-bottom:45px;">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <h1 class="text-center" style="color: black ;" ><i><u><b>Registration</b></u></i></h1>
                <hr/>
                <p id="presponse" class="bg-warning text-danger text-center h4" 
                   style="min-height:40px;width:100%;padding:10px;display:none;
                       ">
                       <%
                       String s=request.getParameter("res");
                       if(s!=null)
                    	   out.print(s);
                       %>
                       </p>
                <form action="SaveRegistration.jsp" method="post" enctype="multipart/form-data">
                    <div class="row controls">
                        <div class="col-sm-6">
                            <input type="text" name="name" id="Name"
                                   placeholder="Name" class="form-control" />
								   <span id="spname" class="err"></span>
                        </div>
                        <div class="col-sm-6">
                            <span class="form-control">
                                Gender:
                                <input type="radio" name="gender" value="Male"
                                       checked="true" /> Male
                                <input type="radio" name="gender"
                                       value="Female" /> Female
                            </span>
                        </div>
                    </div>
                    <div class="row controls">
                        <div class="col-sm-6">
                            
                             <input type="email" name="email" id="EmailId"
                                   placeholder="Email-I'd" class="form-control" />
								   <span id="spemail" class="err"></span>
                            
                            
                        </div>
                        <div class="col-sm-6">
                        <select class="form-control" name="course"
                                    id="Courses">
                                <option value="">Select courses</option>
                                <option>Diploma(CS)</option>
                                <option>Diploma(IT)</option>
								<option>Diploma(Pharmacy)</option>
							    <option>BCA</option>
								<option>B.Tech</option>
							    <option>MCA</option>
                            </select>
							<span id="spcourse" class="err"></span>
                        
                        </div>
                    </div>
                    <div class="row controls">
                        <div class="col-sm-6">
                             <textarea name="address" id="Address"
                                      placeholder="Type your Address"
                                      class="form-control" rows="2"></textarea>
                        </div>
                        <div class="col-sm-6">
                            <input type="number" name="mobno"
                                   id="MobileNo" placeholder="Mobile No"
                                   class="form-control" />
								   <span id="spmob" class="err"></span>
                        </div>
                    </div>
                    <div class="row controls">
                        <div class="col-sm-6">
                           
                            <input type="password" name="pwd" id="Pass"
                                   placeholder="Password" class="form-control" />
								    <span id="sppass" class="err"></span>
                           
                        </div>
                        
                          <div class="col-sm-6">
                            <input type="password" name="confpwd"
                                   id="ConfPass" placeholder="Confirm Password"
                                   class="form-control" />
								    <span id="spconfpass" class="err"></span>
                        </div>
                      </div>
                       
                       <div class="row controls">
                         <div class="col-sm-6" >
                            <span class="form-control" style="min-height:70px;">
                                Upload your Profile Picture:
                                <input type="file" name="profilepic" id="ProfilePic"  />
                            </span>
                        </div>
                          <div class="col-sm-6">
                             <div class="g-recaptcha" data-sitekey="6LcuI9ohAAAAAOq3k6vEpljTaKBKeAcIhrdPDm3q">
                               </div>
                        </div> 
                      </div>
                 
               
                    <div class="row controls" style="margin-top:20px; margin-bottom:20px;">
                         <div class="col-sm-6">
                             <input type="submit" name="btnregister" id="BtnRegister"
                                  class="btn btn-success btn-block" value="Register Now"  onclick="return validateForm()" />
                                  
                        </div>
                        <div class="col-sm-6">
                        <input type="reset" name="btnreset" id="BtnReset"
                                   class="btn btn-danger btn-block" />
                        
                        </div>
                    </div>
                   
                </form>
            </div>
            <div class="col-sm-1"></div>
        </div>

	   </div>
    </div>
    <div class="col-sm-2"></div>
</div>


	</div>
	<%@ include file="common-pages/footer.jsp" %>
	</div>
  </body>

</html>