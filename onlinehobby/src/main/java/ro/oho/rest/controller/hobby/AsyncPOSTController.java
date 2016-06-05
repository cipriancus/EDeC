package ro.oho.rest.controller.hobby;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.AsyncContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.collections.MappingChange.Map;

import ro.oho.rest.facadeDataBase.HobbyFacade;
import ro.oho.rest.facadeDataBase.PostariFacade;
import ro.oho.rest.model.Hobby;
import ro.oho.rest.model.User;
import ro.oho.rest.utils.XssParse;

@WebServlet(urlPatterns = { "/Shout" }, asyncSupported = true)
public class AsyncPOSTController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HashMap<Integer, LinkedList<AsyncContext>> contexts = new HashMap<Integer,LinkedList<AsyncContext>>();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hobbyRequest = (String) request.getParameter("hobby");

		StringBuilder hobbyIDString = new StringBuilder();

		for (int iterator = hobbyRequest.indexOf("hobby/"); iterator < hobbyRequest.length(); iterator++) {
			if (Character.isDigit(hobbyRequest.charAt(iterator)) == true) {
				hobbyIDString.append(hobbyRequest.charAt(iterator));
			}
		}
		int hobbyId = 0;

		if (hobbyIDString.length() != 0) {
			hobbyId = Integer.parseInt(hobbyIDString.toString());
		
		
		final AsyncContext asyncContext = request.startAsync(request, response);
		asyncContext.setTimeout(10 * 60 * 1000);
		
		LinkedList<AsyncContext> list=new LinkedList<>();
		if(contexts.get(new Integer(hobbyId))!=null)		
			list.addAll(contexts.get(new Integer(hobbyId)));

		list.add(asyncContext);
		contexts.put(new Integer(hobbyId),list);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HashMap<Integer, LinkedList<AsyncContext>> asyncContexts = new HashMap<Integer,LinkedList<AsyncContext>>(this.contexts);
		this.contexts.clear();

		User user = (User) request.getSession().getAttribute("user");
		if (request.getSession(false) != null) {
			if (user != null) {
				String hobbyRequest = (String) request.getParameter("hobby");
				if (hobbyRequest != null) {
					StringBuilder hobbyIDString = new StringBuilder();

					for (int iterator = hobbyRequest.indexOf("hobby/"); iterator < hobbyRequest.length(); iterator++) {
						if (Character.isDigit(hobbyRequest.charAt(iterator)) == true) {
							hobbyIDString.append(hobbyRequest.charAt(iterator));
						}
					}
					int hobbyId = 0;

					if (hobbyIDString.length() != 0) {
						hobbyId = Integer.parseInt(hobbyIDString.toString());

						String message = XssParse.parseXSS(request.getParameter("nume"));// aplicat
																		// xss
																		// stripping
																		// si
																		// apoi
																		// inserat
						PostariFacade postariFacade = new PostariFacade();
						Hobby hobby = new HobbyFacade().getHobbyForId(hobbyId);

						try {
							postariFacade.postInHobby(user, hobby.getHobbyName(), message);
						} catch (SQLException e) {
							e.printStackTrace();
						}

						String htmlMessage = "";
						htmlMessage += "<p><h4 style=\"font-size:18px;color:black;margin-left:5%;\">" + "<img src=\""
								+ user.getPicture() + "\" alt=\"user photo\"/> "
								+ "<a href=\"http://localhost:8017/onlinehobby/usr/" + user.getIdUser() + "\">"
								+ user.getNume() + " " + user.getPrenume() + "</a>: " + message + "</h4></p>";

						ServletContext sc = request.getServletContext();

						if (sc.getAttribute("nume") == null) {
							sc.setAttribute("nume", htmlMessage);
						} else {
							String currentMessages = (String) sc.getAttribute("nume");
							sc.setAttribute("nume", htmlMessage + currentMessages);
						}

						List<AsyncContext> listOfContex=asyncContexts.get(hobby.getIdHobby());
						for (AsyncContext asyncContext : listOfContex) {
							try (PrintWriter writer = asyncContext.getResponse().getWriter()) {
								
								writer.println(htmlMessage);
								writer.flush();
								asyncContext.complete();
							} catch (Exception ex) {
							}
						}
					}
				}
			}
		} else {
			response.setStatus(HttpServletResponse.SC_FORBIDDEN);
		}
	}
}
