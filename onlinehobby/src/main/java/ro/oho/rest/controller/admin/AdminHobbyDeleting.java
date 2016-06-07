package ro.oho.rest.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ro.oho.rest.facadeDataBase.HobbyFacade;
import ro.oho.rest.model.User;

/**
 * Servlet implementation class adminValidation
 */
@WebServlet("/adminHobbyDeleting")
public class AdminHobbyDeleting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		 if (request.getSession(false) != null) {
				if (request.getSession().getAttribute("user") != null) {
					User user=(User) request.getSession().getAttribute("user");
		    		if(user.getGrad()==1){
		    			try {
		    				String hobby= request.getParameter("deletedHobby");

		    				new HobbyFacade().deleteHobby(hobby);
		    				out.print("The Hobby has been approved");
							out.flush();
		    			} catch (SQLException e) {
		    				e.printStackTrace();//daca eroare
		    				out.print("The Hobby approval has failed");
							out.flush();
		    			}
		    		}else response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
				} else {
					response.setStatus(HttpServletResponse.SC_FORBIDDEN);
				}
			} else {
				response.setStatus(HttpServletResponse.SC_FORBIDDEN);
			}
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			processRequest(request,response);
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		}

}
