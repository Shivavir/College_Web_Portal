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
	
	
	<div id="main" class="row"  style="min-height:600px; margin-bottom:20px;">
	    <div class="row">
    <div class="col-sm-2"></div>
    <div class="col-sm-8" style="background-color:#7D6608;
            margin-top:20px;padding-top:20px;min-height:400px;
            padding-bottom:45px;">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <h1 class="text-center" style="color:white" ><i><u>Register here</i></u></h1>
                <hr/>
                <p id="presponse" class="bg-warning text-danger text-center h4" 
                   style="min-height:40px;width:100%;padding:10px;display:none;
                       ">Message</p>
                <form action="/Home/Register" method="post"
                      enctype="multipart/form-data">
                    <div class="row controls">
                        <div class="col-sm-6">
                            <input type="text" name="Name" id="Name"
                                   placeholder="Name" class="form-control" />
								   <span id="spname" class="err"></span>
                        </div>
                        <div class="col-sm-6">
                            <span class="form-control">
                                Gender:
                                <input type="radio" name="Gender" value="Male"
                                       checked="true" /> Male
                                <input type="radio" name="Gender"
                                       value="Female" /> Female
                            </span>
                        </div>
                    </div>
                    <div class="row controls">
                        <div class="col-sm-6">
                            <select class="form-control" name="Courses"
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
                            <input type="email" name="EmailId" id="EmailId"
                                   placeholder="Email-I'd" class="form-control" />
								   <span id="spemail" class="err"></span>
                        </div>
                        <div class="col-sm-6">
                            <input type="number" name="MobileNo"
                                   id="MobileNo" placeholder="Mobile No"
                                   class="form-control" />
								   <span id="spmob" class="err"></span>
                        </div>
                    </div>
                    <div class="row controls">
                        <div class="col-sm-6">
                            <textarea name="Address" id="Address"
                                      placeholder="Type your Address"
                                      class="form-control" rows="3"></textarea>
                        </div>
                        <div class="col-sm-6">
                            <span class="form-control" style="min-height:70px;">
                                Upload your Profile Picture:
                                <input type="file" name="ProfilePic"
                                       id="ProfilePic" />
                            </span>
                        </div>
                    </div>
                    <div class="row controls">
                        <div class="col-sm-6">
                            <input type="password" name="Pass" id="Pass"
                                   placeholder="Password" class="form-control" />
								    <span id="sppass" class="err"></span>
                        </div>
                        <div class="col-sm-6">
                            <input type="password" name="ConfPass"
                                   id="ConfPass" placeholder="Confirm Password"
                                   class="form-control" />
								    <span id="spconfpass" class="err"></span>
                        </div>
                    </div>
                    <div class="row controls" style="padding-top:20px; padding-bottom:20px;">
                         <div class="col-sm-6">
                            <div class="g-recaptcha" data-sitekey="6Lc7LbEhAAAAAEtnfO8MNVod__taEPOg_aWiZMM_"></div> 
                        </div>
                        <div class="col-sm-6">
                            <input type="text" name="Code"
                                   id="Code" placeholder="Enter Captcha Code"
                                   class="form-control" style="min-height:40px;" />
                        </div>
                    </div>
                    <div class="row controls">
                        <div class="col-sm-6">
                            <input type="submit" name="BtnRegister" id="BtnRegister"
                                  class="btn btn-success btn-block" value="Register Now"  onclick="return validateForm()" />
                        </div>
                        <div class="col-sm-6">
                            <input type="reset" name="BtnReset" id="BtnReset"
                                   class="btn btn-danger btn-block" />
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-1"></div>
        </div>

    </div>
    <div class="col-sm-2"></div>
</div>


	</div>
	<%@ include file="common-pages/footer.jsp" %>
	</div>
  </body>

</html>