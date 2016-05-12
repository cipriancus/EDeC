<%@page import="java.util.ArrayList"%>
<%@page import="ro.oho.rest.facadeDataBase.UserFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ro.oho.rest.model.User"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome Page</title>
</head>
<body>
	<jsp:useBean id="userBean" scope="request"
		class="ro.oho.rest.model.User"></jsp:useBean>

	<%
		HttpSession sessionUser = request.getSession(false);
		User user = (User) sessionUser.getAttribute("user");

		out.print("Welcome admin ");
		out.print(user.getNume());
		out.print(" ");
		out.print(user.getPrenume());
		out.print(" !");
	%>

	<br>
	<br>
	<a href="logout.jsp.html">Log Out</a>
	<br>
	<br>

	<h1>Sterge useri</h1>
	<form action="DeleteUser" method="post">
		Username : <input type="text" name="username"
			value="<jsp:getProperty name="userBean" property="username"/>">
		<input type="submit" value="Delete">
	</form>
	
	<br>
	<br>
	
	<h1>Admin user</h1>
	<form action="AdminUser" method="post">
		Username : <input type="text" name="username"
			value="<jsp:getProperty name="userBean" property="username"/>">
		<input type="submit" value="Admin">
	</form>

	<br>
	<br>
	<form action="CVS" method="post">
		Generare CSV : <input type="submit" value="Generare">
	</form>
	
	<form action="Page" method="post">
		Get page : <input type="text" name="page"
			value="1">
		<input type="submit" value="Get Page">
	</form>
</body>
</html>
