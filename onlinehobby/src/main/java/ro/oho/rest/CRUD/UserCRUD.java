package ro.oho.rest.CRUD;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ro.oho.rest.facadeDataBase.UserFacade;
import ro.oho.rest.model.User;

@WebServlet("/UserCRUDServlet")
public class UserCRUD extends HttpServlet {

	private static final String SESSIONID = "SESSIONID";
	private static final long serialVersionUID = 1L;
	
	private static UserFacade userFacade = new UserFacade();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = (String) request.getAttribute("action");
		loginUser	(request, response);

		if (action.equals("loginUser")) {
			loginUser(request, response);
			return;
		}else
			if(action.equals("createUser")){
				createUser(request, response);
				return;
			}

	}

	private void loginUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setUsername(userName);
		user.setPassword(password);
		boolean rez=userFacade.loginUser(userName, password);
		
		if(rez){
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			//response.sendRedirect(request.getContextPath() + "/index-user-logat.jsp");
		} 
		else{
			HttpSession session = request.getSession();
			//response.sendRedirect(request.getContextPath() + "/logat-invalid.jsp");
		}
	}
	
	private void createUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/*String username = request.getParameter("username");
		String password = request.getParameter("password");
		String nameuser = request.getParameter("nameuser");
		String surnameuser = request.getParameter("surnameuser");
		String date_of_birth = request.getParameter("date_of_birth");
		String email = request.getParameter("email");
		*/
		
		String username = "cipriancus";
		String password = "sistem";
		String nameuser = "ciprian";
		String surnameuser = "cusmuliuc";
		String date_of_birth = "10/12/1995";
		String email = "cipriancus@gmail.com";
		
		User user = new User();
		user.setIdUser(0);
		user.setUsername(username);
		user.setPassword(password);
		user.setPrenume(nameuser);
		user.setNume(surnameuser);
		user.setEmail(email);
		user.setDataNasterii(date_of_birth);
		
		boolean ok = userFacade.createUser(user);
		
		if(ok == true){
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			PrintWriter out=new PrintWriter(response.getWriter());
			out.println("Cont creat");
			//response.sendRedirect(request.getContextPath() + "/login.jsp");
		}
		else{
			HttpSession session = request.getSession();
			//response.sendRedirect(request.getContextPath() + "/createUser.jsp");
		}
		
	}
}
