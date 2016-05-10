package ro.oho.rest.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ro.oho.rest.facadeDataBase.UserFacade;
import ro.oho.rest.model.User;

@WebServlet("/DeleteUser")

public class DeleteUserController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession sessionUser = request.getSession(false);

			if (sessionUser == null) {
				RequestDispatcher rd = request.getRequestDispatcher("jsp/login_form.jsp");
				rd.forward(request, response);
			} else {
				User user = (User) sessionUser.getAttribute("user");
				if (user.getGrad()==1) {
					String username=(String)request.getParameter("username");
					if(username != null){
						UserFacade userFacade=new UserFacade();	
						try{
							if(userFacade.deleteUser(username)==true){
								out.println("Done");
							}
						}catch(SQLException e){
							out.println(e.getMessage());
						}
					}else{
						RequestDispatcher rd1 = request.getRequestDispatcher("jsp/welcome_page_admin.jsp");
						rd1.forward(request, response);
					}
				} else {
					out.println("Nu aveti drepturi");
				}
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
