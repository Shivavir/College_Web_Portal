<%@page import="java.sql.ResultSet"%>
<%@page import="common.Dbm"%>
<html>

<head>

    <title>Send SMS</title>
  <%@ include file="common/links.jsp" %>
</head>
      
      
<body>
    <div class="container-fluid">
        <%@ include file="common/header.jsp" %>
        
        <!--Main Body Start  -->
        <div class="row" style="min-height: 600px;">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
            <h1 style="text-align: center; margin:2.5% 0 2.5% 0;"><i>SMS Management</i></h1>
            
              <div class="row" style="width:100%;">
              <div class="col-sm-3"></div>
              <div clas="col-sm-6" style="background: rgba(71, 129, 190, 0.891); border:2px solid white; border-radius:15px; margin-left:140px; width:70%;">
                <form action="sendmySMS.jsp">
                <h3 style="text-align: center; color: white; margin:1% 0 1% 0 ; ">Send SMS</h3>
                
                <div class="form-group col-sm-12">
                <i class="fa fa-user" aria-hidden="true"></i>&emsp;<label>Mobile Number :</label><br>
                <input type="text" class="form-control" name="mobno" placeholder="Enter mobile number here..." />
                </div>
                
                <div class="form-group col-sm-12" style="">
                <i class="fa fa-comment" aria-hidden="true"> </i>&emsp; <label>Message :</label><br>
                <textarea class="form-control" name="message" placeholder="Enter SMS text here..."rows="5"></textarea>
                </div>
                
                <div class="col-sm-12 text-center">
                <input type="submit" name="submit" value="Send SMS" style="color: green; background:white; width:300px; height:40px;border:none; font-weight:bold; border-radius:8px;" />
                
                </div>
                
                </form>
              </div>
              <div class="col-sm-3"></div>
              
              </div>
              <br><hr style="background:black;"><br>
           
            
            </div>
            <div class="col-sm-2"></div>
           
           </div>
           
        
        
        <div class="row" style="min-height: 600px;">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
            <h1 style="text-align: center; margin:2.5% 0 2.5% 0;">All SMS</h1>
            
            <%
              Dbm dbm=new Dbm();
            String cmd="select * from sms order by datetime desc";
            ResultSet rs=dbm.dql(cmd);
            int count=1;
            out.print("<table class='table table-bordered table-hover'> <tr style="+
            "'background-color:gray; '><th>SN</th><th>Mobile Number</th><th>Message</th>"+
            "<td>Date Time</td></tr>");
            
            while(rs.next())
            {
            	out.print("<tr><td>"+count+"</td><td>"+rs.getString(2)+"</td><td>"
            +rs.getString(4)+"</td><td>"+rs.getString(3)+
            "</td></tr>");
            	count++;
            }
              out.print("</table>");
            %>
            </div>
            <div class="col-sm-2"></div>
           
           
           
        </div>
        <!--Main Body End  -->
        
      <%@ include file="common/footer.jsp" %>
      </div>
</body>

</html>