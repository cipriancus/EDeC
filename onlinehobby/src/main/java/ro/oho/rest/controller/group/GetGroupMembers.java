package ro.oho.rest.controller.group;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ro.oho.rest.facadeDataBase.GroupFacade;
import ro.oho.rest.model.User;
/**
 * done
 * @author Ciprian
 *
 */
@WebServlet(urlPatterns = { "/GroupUsers" })
public class GetGroupMembers extends HttpServlet {

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
				
				List<User> allUsers = new GroupFacade().getAllUsersForGroup(groupId);
				String html = "";

				for (User user : allUsers) {
					html += "<div class=\"hobby-content\"><a href=\"http://localhost:8017/onlinehobby/usr/";
					html += user.getIdUser();
					html += "\">";
					html +=	"<img src=\""+user.getPicture()+"\" alt=\"user photo\"/> ";
					html += user.getPrenume() + " " + user.getNume();
					html += "</a></div>";
				}

				PrintWriter out = response.getWriter();
				out.println(html);
				out.flush();
			}
		} catch (IOException ioe) {
			System.out.println(ioe.getMessage());
		} catch(NumberFormatException e){
			
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
