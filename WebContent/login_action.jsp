

<%@page language="java" import="interfaces.*"%>

<%
	AdminInterface uc = new AdminInterface();
	try{boolean log = uc.login(request.getParameter("Username"),request.getParameter("Password"));}
	catch(Exception e){
		response.sendRedirect("index.jsp?Error=3");
		return;
	}
	if(uc.getAccount().getType() == 'a'){
		session.setAttribute("loggedIn",uc);
		session.setAttribute("type",1);
		response.sendRedirect("home_admin.jsp");
		
	} else if(uc.getAccount().getType() == 'u'){
		uc.logout();
		UserInterface uc2 = new UserInterface();
		uc2.login(request.getParameter("Username"),request.getParameter("Password"));
		session.setAttribute("loggedIn",uc2);
		session.setAttribute("type",2);
		response.sendRedirect("home_user.jsp");
	} else {
		response.sendRedirect("index.jsp?Error=2");
		return;	
	}

		


%>