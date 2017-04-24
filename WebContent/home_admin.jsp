<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<html>
<head>
<title>CMC Home</title>
<%@include file="verifyLoginAdmin.jsp"%>
<%AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
Account u = uc.getAccount(); %>
<div class="container">
	<h1 class="text-center">Choose My College</h1>
	<h3 class="text-center">
		Welcome back
		<%out.println(u.getFirstName());%>!
	</h3>
</div>
<p class="text-center">
	<a class="btn btn-primary btn-lg" href="manage_users.jsp" role="button">Manage Users</a>
	<a class="btn btn-info btn-lg" href="manage_schools.jsp" role="button">Manage Schools</a>
</p>
</html>
