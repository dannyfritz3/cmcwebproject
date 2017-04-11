<html>
<head>

<title>Login Form</title>
</head>
<body>
<br>
<% 
if(request.getParameter("Error") != null){
	if(request.getParameter("Error").equals("-1")){
		out.println("Username is invalid");
	} else if(request.getParameter("Error").equals("-2")){
		out.println("Password is invalid");
	} else {
		out.println("There was an error when accessing the database");
	}
}
%>
Login form:<br>
<br>
<form method="post" action="Login_action.jsp" name="Login"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input type="password" name="Password"> </td>
</tr>

<td style="vertical-align: top;"><input value="Log in"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>