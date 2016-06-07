package ro.oho.rest.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ro.oho.rest.model.User;


/**
 * Servlet implementation class AdminPage
 */
@WebServlet("/admin")
public class AdminPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	try
    	{
    		if (request.getSession(false) != null) {
    			if (request.getSession().getAttribute("user") != null) {
    		User user=(User) request.getSession().getAttribute("user");
    		if(user.getGrad()==1){
    		RequestDispatcher rd1 = request.getRequestDispatcher("/jsp/admin.jsp");
    		rd1.forward(request, response);
    		}else response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
    		}else response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
    		}else response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
    	}
    	catch(Exception e)
    	{
    		
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
