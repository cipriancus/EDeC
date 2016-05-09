package ro.oho.rest.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import ro.oho.rest.facadeDataBase.UserFacade;
import ro.oho.rest.model.User;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static User user = new User();
	private static UserFacade userFacade = new UserFacade();

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {

			user.setNume(request.getParameter("first_name"));
			user.setPrenume(request.getParameter("last_name"));
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password"));
			user.setDataNasterii(request.getParameter("data_nasterii"));
			user.setEmail(request.getParameter("email"));

			if (userFacade.createUser(user)) {
				out.println("<br>");
				out.println("<br>");
				out.println("<center>Great!!!</center>");
				RequestDispatcher rd = request.getRequestDispatcher("jsp/login_form.jsp");
				rd.forward(request, response);
			} else {
				out.println("Register informations not correct, please register again");
				out.println("<a href=\"login_form.jsp\">Try again...</a>");
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