<%@page import="ro.oho.rest.model.Hobby"%>
<%@page import="ro.oho.rest.facadeDataBase.HobbyFacade"%>
<%@page import="ro.oho.rest.facadeDataBase.PostariFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ro.oho.rest.model.User"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ro.oho.rest.model.Postare"%>
<%@page import="ro.oho.rest.facadeDataBase.PostariFacade"%>
<%@page import="ro.oho.rest.facadeDataBase.HobbyFacade"%>
<%@page import="ro.oho.rest.model.Hobby"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome Page</title>
</head>
<body>
	<jsp:useBean id="post" scope="request" class="ro.oho.rest.model.Postare"></jsp:useBean>
	<jsp:useBean id="hobby" scope="request" class="ro.oho.rest.model.Hobby"></jsp:useBean>
	<jsp:useBean id="userBean" scope="request" class="ro.oho.rest.model.User"></jsp:useBean>

	<%
		HttpSession sessionUser = request.getSession(false);
		User user = (User) sessionUser.getAttribute("user");

		out.print("Welcome user ");
		out.print(user.getNume());
		out.print(" ");
		out.print(user.getPrenume());
		out.print(" !");
		out.print("<p> Nume: " + user.getNume() + "</p>");
		out.print("<p> Prenume: " + user.getPrenume() + "</p>");
		out.print("<p> Username: " + user.getUsername() + "</p>");
	%>
	<br>
	<br>
	<a href="logout.jsp.html">Log Out</a>
	<br>
	<br>
	
	<h1>Editeza profil:</h1>
	<form action="UpdateProfile" method="post">
		Nume : <input type="text" name="nume"
			value="<jsp:getProperty name="userBean" property="nume"/>">
		
		Prenume : <input type="text" name="prenume"
			value="<jsp:getProperty name="userBean" property="prenume"/>">
		
		Email : <input type="text" name="email"
			value="<jsp:getProperty name="userBean" property="email"/>">
		
		Parola : <input type="text" name="parola"
			value="<jsp:getProperty name="userBean" property="password"/>">
		
		Confirmare Parola : <input type="text" name="parolaConfirmare"
			value="<jsp:getProperty name="userBean" property="password"/>">
		<input type="submit" value="Submit modifications">
	</form>


	<h1>Posteaza in hobby-urile tale:</h1>
	<form action="PostMessage" method="post">
		Nume Grup : <input type="text" name="hobbyName"
			value="<jsp:getProperty name="hobby" property="hobbyName"/>">
		Mesaj : <input type="text" name="mesaj"
			value="<jsp:getProperty name="post" property="mesaj"/>"> <input
			type="submit" value="Post">
	</form>
	<%
		out.print("<h1>Postari din  hobby-urile dumneavoastra:</h1>");
	%>
	<!-- Postare in hobby 
	-->
	<%
		List<Postare> allPostari = new ArrayList<Postare>();

		PostariFacade postariFacade = new PostariFacade();
		allPostari.addAll(postariFacade.getAllPostariForId(user.getIdUser()));

		for (Postare iterator : allPostari) {
			out.print("<p>");
			out.print(iterator.toString());
			out.print("</p>");
		}
	%>
	<br>
	<br>

	<h1>Inscriete intr-un nou hobby</h1>
	<form action="RegisterHobby" method="post">
		Nume Grup : <input type="text" name="hobbyName"
			value="<jsp:getProperty name="hobby" property="hobbyName"/>">
		<input type="submit" value="Register">
	</form>

	<h1>Hobby-urile din care faci parte</h1>
	<%
		HobbyFacade hobbyFacade = new HobbyFacade();
		List<Hobby> allHobbies = new ArrayList<Hobby>();
		allHobbies.addAll(hobbyFacade.getAllUserHobby(user.getIdUser()));

		for (Hobby iterator : allHobbies) {
			out.print("<h3>");
			out.print(iterator.getHobbyName());
			out.print("</h3>");

			out.print("<p>");
			out.print(iterator.getDescription());
			out.print("</p>");
		}
	%>
</body>
</html>
