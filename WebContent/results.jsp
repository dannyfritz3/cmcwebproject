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
				<td style="vertical-align: top;">School</td>
			</tr>
			<%
				for (University u : uc.viewSearches()) {
			%>
			<tr>
				<td style="vertical-align: top;">
					<form method="post" action="save_action.jsp" name="Save">
						<input class="btn btn-primary" name="Save" value="Save" type="submit"> <input
							name="Username" value="<%=u.getName()%>" type="hidden">
					</form>
				</td>
				<td style="vertical-align: top;"><%=u.getName()%></td>
				<td style="vertical-align: top;">
					<form method="post" action="view_school_user.jsp" name="View">
						<input class="btn btn-primary" name="View" value="View" type="submit"> <input
							name="Username" value="<%=u.getName()%>" type="hidden">
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