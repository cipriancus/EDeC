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
<link rel="stylesheet" type="text/css" href="css/profile.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/logo.png">
<title>Oho</title>
</head>
<body>
	<%
		HttpSession sessionUser = request.getSession(false);
		User user = (User) sessionUser.getAttribute("user");
		
		HobbyFacade hobbyFacade=new HobbyFacade();
		List<Hobby> allHobby=hobbyFacade.getAllUserHobby(user.getIdUser());
		
		PostariFacade postariFacade=new PostariFacade();
		List<Postare> allPostari=postariFacade.getAllPostariForId(user.getIdUser());

		UserFacade userFacade=new UserFacade();
	%>
	<div class="site-wrapper">
		<div class="site-wrapper-inner">
			<div class="cover-container">
				<div class="content">
					<header>
						<div class="header-wrapper">
							<div class="leftMenuBar">
								<ul>
									<img align="center" width="30px" height="30px"
										src="images/logo.png" />
									<li id="menuItem"><input type="text" name="searchBox"
										class="searchBox"></li>
									<li id="menuItem"><a href="#"> <img
											class="searchButton" src="images/search.png"
											alt="Search Button" align="center" />
									</a></li>
								</ul>
							</div>

							<div class="rightMenuBar">
								<ul>
									<li id="menuItem"><a href="#">Hobbies</a></li>
									<li id="menuItem"><a
										href="http://localhost:8017/onlinehobby/usr/<%out.print(user.getIdUser());%>">Profile</a></li>
									<li id="menuItem"><a href="http://localhost:8017/onlinehobby/settings">Settings</a></li>
									<%
										if (user.getGrad() == 1) {
											out.print("<li id=\"menuItem\"><a href=\"http://localhost:8017/onlinehobby/admin\">Admin</a></li>");
										}
									%>
									<li id="menuItem"><a href="logout">Logout</a></li>

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

											<div class="profilePicture">
												<a
													href="http://localhost:8017/onlinehobby/usr/<%out.print(user.getIdUser());%>">
													<img src="<%out.print(user.getPicture());%>"
													alt="Profile Picture" /> 
													<%
 													out.print(user.getNume() + " " + user.getPrenume());
													%>
												</a>
											</div>
											
											<div class="hobbies">
												<div class="head">
												<a>Hobbies you follow</a>
												</div>															
												<%
												for(Hobby iterator:allHobby){
													out.print("<div class=\"hobby-content\"><a href=\"localhost:8017/hobby/");
													out.print(iterator.getIdHobby());
													out.print("\">");
													out.print(iterator.getHobbyName());
													out.print("</a></div>");
												}
												%>
											
											</div>

										</div>
									</div>
								</div>
								<div class="feed">
									<div class="feedContent">
										<div class="comments-container">
														
											<ul id="comments-list" class="comments-list">
											<%
																							
											out.print("<li><div class=\"comment-main-level\"><div class=\"comment-avatar\"><img"+
													" src=\""+user.getPicture()+"\""+
													"alt=\"Profile picture\">"+
													"</div>"+
													"<div class=\"comment-box\">"+
													"<div class=\"comment-head\">");
													out.print("<a href=\"#\">I like </a>");
													out.print("<input type=\"text\" placeholder=\"Hobby\" id=\"hobby\">");
													out.print("<a href=\"#\"> because </a>");
													out.print("<input type=\"text\" placeholder=\"Reasons\" id=\"reasons\">");
													out.print("&nbsp");out.print("&nbsp");
													out.print("<input type=\"submit\" placeholder=\"Post\" id=\"hobby\"></div>");
											%>
												<%
												
												for(Postare iterator:allPostari){
													User userPost=new User();
													userPost=userFacade.getUserById(iterator.getIdUser());
													
												out.print("<li><div class=\"comment-main-level\"><div class=\"comment-avatar\"><img"+
														" src=\""+userPost.getPicture()+"\""+
														"alt=\"Profile picture\">"+
														"</div>"+
														"<div class=\"comment-box\">"+
														"<div class=\"comment-head\">"+
														"<h6 class=\"comment-name by-author\">");
														out.print("<a href=\"http://localhost:8017/onlinehobby/usr/"+userPost.getIdUser()+"\">"+userPost.getNume()+" "+userPost.getPrenume()+"</a>");	 	
														out.print("</h6><span> At "+iterator.getDate_of_post()+" in <a href=\"http://localhost:8017/onlinehobby/hobby/"+iterator.getIdHobby()+"\">"+hobbyFacade.getHobbyNameForId(iterator.getIdHobby())+"</a></span><i class=\"fa fa-reply\"></i></div>");	
														out.print("<div class=\"comment-content\">"+iterator.getMesaj()+"</div></div></div></li>");
												}
												%>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="hobby_suggestions">
								<div class="head">
									<a>Recommended Hobbies</a>
								</div>
								<div class="hobby-content">Pian</div>
								<div class="hobby-content">Box</div>
								<div class="hobby-content">Fotbal</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
