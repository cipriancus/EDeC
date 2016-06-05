package ro.oho.rest.controller.group;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ro.oho.rest.facadeDataBase.GroupFacade;


@WebServlet("/group/*")
public class GetGrupId extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession sessionUser = request.getSession(false);

			if (sessionUser != null) {
				if (sessionUser.getAttribute("user") != null) {

					StringBuilder groupIDString = new StringBuilder();
					String groupRequest = (String) request.getRequestURI();
					for (int iterator = groupRequest.indexOf("group/"); iterator < groupRequest.length(); iterator++) {
						if (Character.isDigit(groupRequest.charAt(iterator)) == true) {
							groupIDString.append(groupRequest.charAt(iterator));
						}
					}
					int groupId = 0;

					if (groupIDString.length() != 0) {
						groupId = Integer.parseInt(groupIDString.toString());
							request.setAttribute("urlString", request.getRequestURI());
							request.setAttribute("name", new GroupFacade().getGroupForID(groupId).getDescription());
							RequestDispatcher rd1 = request.getRequestDispatcher("/jsp/comunicare_grup.jsp");
							rd1.forward(request, response);																																						// comunicare
						
					} else {
						RequestDispatcher rd1 = request.getRequestDispatcher("/jsp/first_page.jsp");
						request.setAttribute("urlString", request.getRequestURI());
					}
				} else {
					response.setStatus(HttpServletResponse.SC_FORBIDDEN);
				}
			}
		} finally {
			out.close();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
}
