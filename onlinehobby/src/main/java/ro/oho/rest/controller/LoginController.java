package ro.oho.rest.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import ro.oho.rest.facadeDataBase.UserFacade;
import ro.oho.rest.model.User;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static User user = new User();
	private static UserFacade userFacade = new UserFacade();

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password"));

			if (userFacade.loginUser(request.getParameter("username"), request.getParameter("password"))) {
				User bdUser = new User();
				bdUser = userFacade.getUserByUserName(request.getParameter("username"));

				if (bdUser.getGrad() == 1) {
					HttpSession sessionUser = request.getSession();
					sessionUser.setAttribute("user", bdUser);

					
					
					RequestDispatcher rd1 = request.getRequestDispatcher("jsp/welcome_page_admin.jsp");
					rd1.forward(request, response);
				} else {
					HttpSession sessionUser = request.getSession();
					sessionUser.setAttribute("user", bdUser);

					RequestDispatcher rd1 = request.getRequestDispatcher("jsp/welcome_page_user.jsp");
					rd1.forward(request, response);
				}
			} else {
				out.println("Either username or password is incorrect!");
				out.println("<a href=\"jsp/register_form.jsp\">Try again...</a>");
			}
		} finally {
			out.close();
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}
}