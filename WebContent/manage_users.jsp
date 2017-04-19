<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title></title>
<%@include file="verifyLoginAdmin.jsp"%>
<%
	AdminInterface uc = (AdminInterface) session.getAttribute("loggedIn");
%>

<div class="container">
					<a class="btn btn-success" href="Add.jsp"> <span class="glyphicon glyphicon-plus"></span> Add User</a>
	<table class="table table-bordered table-striped">
		<tbody>

			<tr>
				<td style="vertical-align: top;">Edit</td>
				<td style="vertical-align: top; text-align: center;">Full name
				</td>
				<td style="vertical-align: top; text-align: center;">Username</td>
				<td style="vertical-align: top; text-align: center;">Password</td>
				<td style="vertical-align: top; text-align: center;">Type</td>
				<td style="vertical-align: top; text-align: center;">Status</td>
				<td style="vertical-align: top;">Delete</td>
			</tr>
			<%
				for (Account u : uc.manageUsers()) {
			%>
			<tr>
				<td style="vertical-align: top;">
					<form method="post" action="Edit.jsp" name="Edit">
						<input class="btn btn-primary" name="Edit" value="Edit" type="submit"> <input
							name="Username" value="<%=u.getUsername()%>" type="hidden">
					</form>
				</td>
				<td style="vertical-align: top;"><%=u.getFirstName() + " " + u.getLastName()%>
				</td>
				<td style="vertical-align: top;"><%=u.getUsername()%></td>
				<td style="vertical-align: top;"><%=u.getPassword()%></td>
				<td style="vertical-align: top;"><%=u.getType()%></td>
				<td style="vertical-align: top;"><%=u.getStatus()%></td>
				<td style="vertical-align: top;">
					<form method="post" action="Delete.jsp" name="Delete">
						<input class="btn btn-danger" name="Delete" value="Delete" type="submit"> <input
							name="Username" value="<%=u.getUsername()%>" type="hidden">
					</form>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</div>
</body>
</html>

