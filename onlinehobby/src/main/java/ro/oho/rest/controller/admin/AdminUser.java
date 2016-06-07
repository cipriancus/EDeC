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
import ro.oho.rest.facadeDataBase.UserFacade;
import ro.oho.rest.model.User;

/**
 * Servlet implementation class adminValidation
 */
@WebServlet("/adminUser")
public class AdminUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		 if (request.getSession(false) != null) {
				if (request.getSession().getAttribute("user") != null) {
					User user=(User) request.getSession().getAttribute("user");
		    		if(user.getGrad()==1){
		    				String inputUser= request.getHeader("inputUser");

		    				
		    				if(inputUser!=null){
		    				StringBuilder inputUserID=new StringBuilder();
		    				for(int iterator=0;iterator<inputUser.length();iterator++){
		    					if(inputUser.charAt(iterator)==' ') break;
		    					if(Character.isDigit(inputUser.charAt(iterator))==true){
		    						inputUserID.append(inputUser.charAt(iterator));
		    					}
		    				}
		    				
		    				if(inputUserID.length()!=0){
		    					
		    					long idUser=Long.parseLong(inputUserID.toString());
		    					
		    					try{
		    						if(new UserFacade().adminUser(idUser)==true){
		    							out.print("The admin approval has been successful");
										out.flush();
		    						}else{
		    							out.print("The admin approval has failed");
										out.flush();
		    						}
		    						
		    					} catch (SQLException e) {
				    				e.printStackTrace();//daca eroare
				    				out.print("The admin approval has failed");
									out.flush();
				    			}
		    				}else{
		    					out.print("The admin approval has failed");
								out.flush();
		    				}
		    				
		    				}else{
		    					out.print("The admin approval has failed");
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
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			processRequest(request, response);
		}

}
