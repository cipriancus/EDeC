package ro.oho.rest.controller.group;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ro.oho.rest.facadeDataBase.PostariFacade;
import ro.oho.rest.facadeDataBase.UserFacade;
import ro.oho.rest.model.Postare;
import ro.oho.rest.model.User;

@WebServlet(urlPatterns = { "/LoadPostsGroups" })
public class LoadPostGrup extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	void requestProc(HttpServletRequest request, HttpServletResponse response) {
		try {

			String groupRequest = (String) request.getParameter("group");

			StringBuilder groupIDString = new StringBuilder();

			for (int iterator = groupRequest.indexOf("group/"); iterator < groupRequest.length(); iterator++) {
				if (Character.isDigit(groupRequest.charAt(iterator)) == true) {
					groupIDString.append(groupRequest.charAt(iterator));
				}
			}
			int groupId = 0;

			if (groupIDString.length() != 0) {
				groupId = Integer.parseInt(groupIDString.toString());

				PostariFacade postariFacade = new PostariFacade();
				List<Postare> allPostari = postariFacade.getAllGroupPost((groupId));

				String html = "";
				for (Postare iterator : allPostari) {

					User user = new UserFacade().getUserById(iterator.getIdUser());
					html += "<p><h4 style=\"font-size:18px;color:black;margin-left:5%;\">"+"<img src=\""+user.getPicture()+"\" alt=\"user photo\"/> "+"<a href=\"http://localhost:8017/onlinehobby/usr/"+user.getIdUser()+ "\">"+ user.getNume() + " " + user.getPrenume() + "</a>: " + iterator.getMesaj()
							+ "</h4></p>";
				}
				PrintWriter out = response.getWriter();
				out.println(html);
				out.flush();
			}
		} catch (IOException ioe) {
			System.out.println(ioe.getMessage());
		}catch(NumberFormatException e){
			
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestProc(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestProc(request, response);
	}

}
