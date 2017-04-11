<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLogin.jsp" %>
<html>
<head>
<title></title>
</head>
<body>
<% AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");%>
Hello User <%= uc.getAccount().getFirstName() %>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><a href="Add.jsp">ADD A USER</a>
</td>

</tr>
<tr>
<td style="vertical-align: top;">
Edit</td>
<td style="vertical-align: top; text-align: center;">Full name
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">Delete
</td>
</tr>
<% for(Account u : uc.manageUsers()){ %>
<tr>
<td style="vertical-align: top;">
<form method="post" action="Edit.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value="<%= u.getUsername() %>" type="hidden">
</form>
</td>
<td style="vertical-align: top;"><%= u.getFirstName() + " " + u.getLastName() %>
</td>
<td style="vertical-align: top;"><%= u.getUsername() %>
</td>
<td style="vertical-align: top;"><%= u.getPassword() %>
</td>
<td style="vertical-align: top;"><%= u.getType() %>
</td>
<td style="vertical-align: top;"><%= u.getStatus() %>
</td>
<td style="vertical-align: top;">
<form method="post" action="Delete.jsp" name="Delete">
    <input name="Delete" value="Delete" type="submit">
    <input name="Username" value="<%= u.getUsername() %>" type="hidden">
</form>
</td>
</tr>
<% } %>
</tbody>
</table>
</body>
</html>

