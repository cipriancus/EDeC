<%@page import="ro.oho.rest.facadeDataBase.PostariFacade"%>
<%@page import="ro.oho.rest.facadeDataBase.HobbyFacade"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ro.oho.rest.facadeDataBase.UserFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ro.oho.rest.model.User"%>
<%@page import="ro.oho.rest.model.Hobby"%>
<%@page import="ro.oho.rest.model.Postare"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/admin.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/logo.png">
<title>Oho</title>

</head>
<body>
	<%
		HttpSession sessionUser = request.getSession(false);
		User user = (User) sessionUser.getAttribute("user");

		HobbyFacade newHobby = new HobbyFacade();
		List<Hobby> newHobbyList = new ArrayList<Hobby>();
		newHobbyList = newHobby.getAllNewHobby();

		List<User> allUsers = new UserFacade().getAllUsers();
	%>
	<div class="site-wrapper">
		<div class="site-wrapper-inner">
			<div class="cover-container">
				<div class="content">
					<header>
						<div class="header-wrapper">
							<div class="leftMenuBar">
								<ul>

									<li><a href="http://localhost:8017/onlinehobby/home"><img
											align="center" width="40px" height="40px"
											src="images/logo.png" /></a></li>


									<li><a
										href="http://localhost:8017/onlinehobby/usr/<%out.print(user.getIdUser());%>">
											<img align="center" src="<%out.print(user.getPicture());%>"
											alt="Profile Picture" /> <%
 	out.print(user.getNume() + " " + user.getPrenume());
 %>
									</a></li>
								</ul>
							</div>

							<div class="rightMenuBar">
								<ul>
									<li id="menuItem"><a
										href="http://localhost:8017/onlinehobby/home">Home</a></li>

									<li id="menuItem"><a
										href="http://localhost:8017/onlinehobby/usr/<%out.print(user.getIdUser());%>">Profile</a></li>
									<%
										if (user.getGrad() == 1) {
											out.print("<li id=\"menuItem\"><a href=\"http://localhost:8017/onlinehobby/admin\">Admin</a></li>");
										}
									%>
									<li id="menuItem"><a
										href="http://localhost:8017/onlinehobby/ContactPage">Contact</a></li>
									<li id="menuItem"><a
										href="http://localhost:8017/onlinehobby/jsp/logout.jsp">Logout</a></li>

								</ul>
							</div>

						</div>
					</header>
					<div class="main">
						<div class="main-wrapper">
							<div class="profilePlusFeed">
								<div class="profilFeed">
									<div class="profile">
										<div class="profileContent">

											<div class="profilePicture"></div>

											<div class="hobbies">
												<div class="head">
													<p></p>
													<h3>The most popular/rarest hobbies</h3>
													<button onclick="return downloadLongPDFPopular();"
														class="buttonDownload">Generate long PDF Report</button>
													<button onclick="return downloadShortPDFPopular();"
														class="buttonDownload">Generate short PDF Report</button>

													<button onclick="return downloadCSVPopular();"
														class="buttonDownload">Generate CSV Report</button>
													<button onclick="return downloadHTMLPopular();"
														class="buttonDownload">Generate HTML Report</button>
												</div>
												
												<div class="head">
													<p></p>
													<h3>Hobby evolution by time</h3>
													<button onclick="return downloadLongPDFTime();"
														class="buttonDownload">Generate long PDF Report</button>
													<button onclick="return downloadShortPDFTime();"
														class="buttonDownload">Generate short PDF Report</button>

													<button onclick="return downloadCSVTime();"
														class="buttonDownload">Generate CSV Report</button>
													<button onclick="return downloadHTMLTime();"
														class="buttonDownload">Generate HTML Report</button>
												</div>
											</div>

										</div>
									</div>
								</div>
								<div class="feed">
									<div class="feedContent">
										<div class="comments-container">

											<datalist id="hobbiuri">
												<%
													for (Hobby iterator : newHobbyList) {
														out.print("<option value=\"" + iterator.getHobbyName() + "\">");
													}
												%>
											</datalist>
											<ul id="comments-list" class="comments-list">
												<%
													if (!newHobbyList.isEmpty()) {
														out.print(
																"<div class=\"inputHobby\"> <input id=\"hobbyInput\" list=\"hobbiuri\" type=\"text\" class=\"approveInput\" ></input></div>");

														out.print(
																"<div class=\"buttonsHobby\"><input type=\"submit\" onclick=\"return approveHobby();\" value=\"APPROVE\" class=\"approveButton\"></input> ");
														out.print(
																"<input type=\"submit\" onclick=\"return deleteHobby();\" value=\"DELETE\" class=\"approveButton\"></input></div>");
														out.print("<div id=\"servletResponse\"></div>");
														for (Hobby iterator : newHobbyList) {
															out.println("<div class=\"comment-head\" id=\"hobby" + iterator.getHobbyName() + "\">");
															out.print("<p class=\"newHobb\">A NEW HOBBY HAS BEEN REQUESTED:<p id=\"id" + iterator.getHobbyName()
																	+ "\">" + iterator.getIdHobby() + "</p>" + "<input class=\"dashed_class\" id=\"NAMEnewHobby"
																	+ iterator.getHobbyName() + "\" value=\" " + iterator.getHobbyName() + "\">"
																	+ "<textarea  class=\"text_area_class\" id=\"DESCnewHobby" + iterator.getHobbyName() + "\">"
																	+ iterator.getDescription() + "</textarea>"
																	+ "<input class=\"dashed_class\" id=\"IMGnewHobby" + iterator.getHobbyName()
																	+ "\" value=\" " + iterator.getImageURL() + "\">"
																	+ "<input class=\"dashed_class\" id=\"VIDEOnewHobby" + iterator.getHobbyName()
																	+ "\" value=\" " + iterator.getVideoURL() + "\"></p>");

															out.println("</div>");
														}
													} else {
														out.println("<h1> You have no hobby request</h1>");
													}
												%>
											</ul>


											<h1>Admin User</h1>
											<datalist id="allUsers">
												<%
													for (User iterator : allUsers) {
														out.print("<option value=\"" + iterator.getIdUser() + " " + iterator.getNume() + " "
																+ iterator.getPrenume() + "\">");
													}
												%>
											</datalist>
											<ul id="comments-list-admin" class="comments-list">
												<%
													if (!allUsers.isEmpty()) {
														out.print(
																"<div class=\"inputHobby\"> <input id=\"inputUser\" list=\"allUsers\" type=\"text\" class=\"approveInput\" ></input></div>");

														out.print(
																"<div class=\"buttonsHobby\"><input type=\"submit\" onclick=\"return adminUser();\" value=\"ADMIN\" class=\"approveButton\"></input> ");
														out.print("<div id=\"servletResponseAdmin\"></div>");

														for (User iterator : allUsers) {
															out.print(
																	"<div id=\"" + iterator.getIdUser() + " " + iterator.getNume() + " " + iterator.getPrenume()
																			+ "\" class=\"comment-head\" ><p><h4 style=\"font-size:18px;color:black;margin-left:5%;\">"
																			+ "<img src=\"" + iterator.getPicture() + "\" alt=\"user photo\"/> "
																			+ "<a href=\"http://localhost:8017/onlinehobby/usr/" + iterator.getIdUser() + "\">"
																			+ iterator.getNume() + " " + iterator.getPrenume() + "</a></h4></p></div>");

														}
													} else {
														out.println("<h1> You have no hobby request</h1>");
													}
												%>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="/onlinehobby/js/comunicare.js"></script>
</body>
</html>
