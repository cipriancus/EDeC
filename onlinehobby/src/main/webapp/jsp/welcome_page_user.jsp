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

	<%
		HttpSession sessionUser = request.getSession(false);
		User user = (User) sessionUser.getAttribute("user");

		out.print("Welcome user ");
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

	<%
		out.print("<h1>Postari din  grupurile dumneavoastra:</h1>");
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

		<h1>Editare Profil:</h1>
		<form action="PostMessage" method="post">
			Nume Grup : <input type="text" name="numeGrup"
				value="<jsp:getProperty name="hobby" property="hobbyName"/>">
			Mesaj : <input type="text" name="mesaj"
				value="<jsp:getProperty name="post" property="mesaj"/>">
			<input type="submit" value="Post">
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
