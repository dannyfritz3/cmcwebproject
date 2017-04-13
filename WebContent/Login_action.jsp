

<%@page language="java" import="interfaces.*"%>

<%
	AdminInterface uc = new AdminInterface();
	try{boolean log = uc.login(request.getParameter("Username"),request.getParameter("Password"));}
	catch(Exception e){
		response.sendRedirect("index.jsp?Error=3");
		return;
	}
	if(uc.getAccount().getType() != 'a'){
		response.sendRedirect("index.jsp?Error=2");
		return;	
	}
		session.setAttribute("loggedIn",uc);
		response.sendRedirect("manage_users.jsp");

		


%>