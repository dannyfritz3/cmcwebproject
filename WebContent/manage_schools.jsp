<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<html>
<head>
<%@include file="verifyLoginUser.jsp" %>
<title>Manage Schools</title>

<% UserInterface uc = (UserInterface)session.getAttribute("loggedIn");
	Account u = uc.getAccount();
%>

<div class="container">
					<a class="btn btn-success btn-block" href="Add.jsp"> <span class="glyphicon glyphicon-plus"></span> Add User</a>
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
			<% ArrayList<University> savedSchools = uc.viewSavedSchools();
				for(University uni : savedSchools) {
			%>
			<tr>
				<td style="vertical-align: top;">
					<form method="post" action="remove_action.jsp" name="Remove">
						<input class="btn btn-danger" name="Remove" value="Remove" type="submit"> <input
							name="Username" value="<%=uni.getName()%>" type="hidden">
					</form>
				</td>
				<td style="vertical-align: top;"><%=uni.getName()%>
				</td>
				<td style="vertical-align: top;">
					<form method="post" action="view_school.jsp" name="View">
						<input class="btn btn-primary" name="View" value="View" type="submit"> <input
							name="Username" value="<%=uni.getName()%>" type="hidden">
					</form>
				</td>
			</tr>
			<%
				}
			%>