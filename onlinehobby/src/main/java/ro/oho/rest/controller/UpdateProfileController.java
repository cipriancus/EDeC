package ro.oho.rest.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ro.oho.rest.model.User;

@WebServlet("/UpdateProfile")
public class UpdateProfileController extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession sessionUser=request.getSession(false);
			

			if(sessionUser==null){
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login_form.jsp");
			rd.forward(request, response);
			}else{
				User user = (User) sessionUser.getAttribute("user");
				
				User modificatUser=(User) sessionUser.getAttribute("user");
				
				if(sessionUser.getAttribute("user")!=null){
					
				}
				
				if(sessionUser.getAttribute("user")!=null){
					
				}
				
				if(sessionUser.getAttribute("user")!=null){
					
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
