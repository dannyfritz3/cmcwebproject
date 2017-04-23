<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title>Search</title>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
%>
<div class="container">

	<table class="table table-bordered table-striped">
		<tbody>
			<tr>
				<th colspan="3" class="text-center" style="vertical-align: top;">School</th>
			</tr>
			<%
				for (University u : uc.viewSearch()) {
			%>
			<tr>

				<%
					if (!uc.viewSavedSchools().contains(u)) {
				%>
				<td style="vertical-align: top;">
					<form method="post" action="save_action.jsp" name="Save">
						<input class="btn btn-success" name="Save" value="Save"
							type="submit"> <input name="University"
							value="<%=u.getName()%>" type="hidden">
					</form>
				</td>
				<%
					} else {
				%>
				<td style="vertical-align: top;">
					<form method="post" action="remove_action.jsp" name="Remove">
						<input class="btn btn-danger" name="Remove" value="Remove"
							type="submit"> <input name="University"
							value="<%=u.getName()%>" type="hidden">
					</form>
				</td>
				<%
					}
				%>

				<td style="vertical-align: top;"><%=u.getName()%></td>
				<td style="vertical-align: top;">
					<form method="post" action="view_school_user.jsp" name="View">
						<input class="btn btn-primary" name="View" value="View"
							type="submit"> <input name="University"
							value="<%=u.getName()%>" type="hidden">
					</form>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	</body>
</html>