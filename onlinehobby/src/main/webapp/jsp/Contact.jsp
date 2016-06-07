<%@page import="ro.oho.rest.model.User"%>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Contact</title>
<link rel="stylesheet" href="css/contact.css"></link>
<link rel="icon" href="/onlinehobby/images/logo.png">
<script>
	function validareMail() {
		window.location = "http://localhost:8017/onlinehobby/home";
	}
</script>
</head>
<body>
	<%
		HttpSession sessionUser = request.getSession(false);
		User user = (User) sessionUser.getAttribute("user");
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
										src="/onlinehobby/images/logo.png" /></a></li>


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

									<li id="menuItem"><a href="http://localhost:8017/onlinehobby/jsp/logout.jsp">Logout</a></li>

							</ul>
						</div>

					</div>
					</header>
					<div class="main">
						<div class="contact">

							<div class="container">
							<div>
								<form action="ContactPage" method="post">
									Name*: <br> <input type="text" name="name"
										value="<%out.print(user.getNume() + " " + user.getPrenume());%>">
											<br></br> Email :<br> <input type="text" name="email"
												value="<%out.print(user.getEmail());%>"></input> <br></br>
												Subject:<br> <input type="textarea" name="subiect"
													placeholder="Enter the subject"></input> <br></br> Your
													Message: <br> <textarea name="mesaj" rows="8"></textarea>
														<br></br> <input type="submit" value="SEND"
														onclick="return validareMail();"></input>
								</form>
							</div>
							</div>
							<div class="footer">
								<div class="footer_wrapper">
									<div class="footer_content">
										<b>Problem ? <a
											href="https://support.google.com/mail/bin/answer.py?hl=en&amp;answer=32050">Clear
												cookies !</a></b>
										<p>
											Follow us on: <a href="https://www.facebook.com/OnlineHob/">
												<img src="images/mini/facebook.png" alt="" />
											</a> <a href="https://twitter.com/10_oho"> <img
												src="images/mini/twitter.png" alt="" /></a>
										</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>