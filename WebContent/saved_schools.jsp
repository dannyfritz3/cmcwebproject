<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title></title>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
%>

<div class="container">
					
	<table class="table table-bordered table-striped">
		<tbody>

			<tr>
				<td style="vertical-align: top; text-align: center;">Remove</td>
				<td style="vertical-align: top; text-align: center;">University</td>
				<td style="vertical-align: top; text-align: center;">View</td>
			</tr>
			<%
				for (University u : uc.viewSavedSchools()) {
			%>
			<tr>
				<td style="vertical-align: top;">
					<form method="post" action="remove_action.jsp" name="remove">
						<input class="btn btn-primary" name="remove" value="remove" type="submit"> <input
							name="University" value="<%=u%>" type="hidden">
					</form>
				</td>
				<td style="vertical-align: top;"><%=u.getName()%></td>
				<td style="vertical-align: top;">
					<form method="post" action="view_school.jsp" name="view">
						<input class="btn btn-danger" name="view" value="view" type="submit"> <input
							name="University" value="<%=u%>" type="hidden">
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

