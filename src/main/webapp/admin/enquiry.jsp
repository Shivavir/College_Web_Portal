<%@ page import="java.sql.ResultSet"%>
<%@ page import="common.Dbm"%>
<html>
<head>

<title>Enquiry Dashboard</title>
<%@ include file="common/links.jsp"%>
</head>
<body>

	<div class="container-fluid">
		<%@ include file="common/header.jsp"%>
		<div class="row" style="min-height: 600px;">
			<div class="col-sm-2"></div>

			<div class="col-sm-8">
				<h1
					style="text-align: center; color: black; margin: 7px 0px 7px 0px;">
					<b>Enquiry Management</b>
				</h1>
				<%
				Dbm dbm = new Dbm();
				String cmd = "select * from enquiry order by enquery_dt desc";
				ResultSet rs = dbm.dql(cmd);
				int count = 1;
				out.print(
						"<table class='table table-bordered table-hover'><tr style='border: 2px dotted red;'><th>SN.</th><th>Name</th><th>Email</th><th>Contact No.</th><th>Meesage</th><th>date & time</th></tr>");

				while (rs.next()) {

					out.print("<tr style='border: 2px dotted green;'><td>" + count + "</td><td>" + rs.getString(2) + "</td><td>"
					+ rs.getString(3) + "<a href='sendemail.jsp?email=" + rs.getString(3)
					+ "&subject=Reply on your enquiry' style='text-decoration:none'> Reply</a></td><td>" + rs.getString(4)
					+ "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td></tr>");
					count++;
				}
				out.print("</table>");
				%>
			</div>

		</div>
		<!--Main Body End  -->
		<%@ include file="common/footer.jsp"%>
</body>
</html>