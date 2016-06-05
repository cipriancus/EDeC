package ro.oho.rest.controller.hobby;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.AsyncContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ro.oho.rest.facadeDataBase.HobbyFacade;
import ro.oho.rest.facadeDataBase.PostariFacade;
import ro.oho.rest.model.Hobby;
import ro.oho.rest.model.User;
import ro.oho.rest.utils.XssParse;

/**
 * Servlet implementation class MakeHobby
 */
@WebServlet("/MakeHobby")
public class MakeHobby extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// da pagina de creare hobby
		PrintWriter out = response.getWriter();
		try {
			HttpSession sessionUser = request.getSession(false);

			User user = null;
			if (sessionUser != null) {
				user = (User) sessionUser.getAttribute("user");
			}

			if (user == null) {
				response.setStatus(HttpServletResponse.SC_FORBIDDEN);
			} else {
				String hobbyName = request.getParameter("hobbyName");

				request.setAttribute("HobbyName", hobbyName);
				request.getRequestDispatcher("jsp/make_hobby.jsp").include(request, response);
			}
		} finally {
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// raspunde la creare
		User user = (User) request.getSession().getAttribute("user");
		if (request.getSession(false) != null) {
			if (user != null) {
				String iLikeHobby = (String) request.getHeader("iLikeHobby");
				String reasons = "I like " + iLikeHobby + " because " + (String) request.getHeader("reasons");
				String HobbyDescription = (String) request.getHeader("HobbyDescription");
				String HobbyVideo = (String) request.getHeader("HobbyVideo");
				String HobbyURL = (String) request.getHeader("HobbyURL");

				if (iLikeHobby != null && reasons != null && HobbyDescription != null && HobbyURL != null
						&& HobbyVideo != null) {
					iLikeHobby = XssParse.parseXSS(iLikeHobby);
					reasons = XssParse.parseXSS(reasons);
					HobbyDescription = XssParse.parseXSS(HobbyDescription);

					HobbyFacade hobbyFacade = new HobbyFacade();
					int hobbyId = new HobbyFacade().getHobbyForNameUnaproved(iLikeHobby);

					try {
						if (hobbyId == -1) {
							if (hobbyFacade.addNewHobby(iLikeHobby, HobbyDescription, HobbyVideo, HobbyURL) == false) {
								response.setHeader("response", "false");
							}
						}
						new HobbyFacade().addUserToHobby(user,new HobbyFacade().getHobbyForNameUnaproved(iLikeHobby));
							if (new PostariFacade().postInHobby(user, iLikeHobby, reasons) == true) {
								response.setHeader("redirect", "http://localhost:8017/onlinehobby/home");
								response.setHeader("response", "true");
							}else{
								response.setHeader("response", "false");
							}
					} catch (SQLException e) {// esec
						response.setHeader("response", "false");


					} 
				}
			} else
				response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		} else
			response.setStatus(HttpServletResponse.SC_FORBIDDEN);
	}

}
