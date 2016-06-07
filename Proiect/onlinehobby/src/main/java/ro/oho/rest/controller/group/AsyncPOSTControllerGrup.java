package ro.oho.rest.controller.group;

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

import ro.oho.rest.facadeDataBase.GroupFacade;
import ro.oho.rest.facadeDataBase.HobbyFacade;
import ro.oho.rest.facadeDataBase.PostariFacade;
import ro.oho.rest.model.Group;
import ro.oho.rest.model.Hobby;
import ro.oho.rest.model.User;
import ro.oho.rest.utils.XssParse;

@WebServlet(urlPatterns = { "/ShoutGroup" }, asyncSupported = true)
public class AsyncPOSTControllerGrup extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HashMap<Integer, LinkedList<AsyncContext>> contexts = new HashMap<Integer,LinkedList<AsyncContext>>();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String groupRequest = (String) request.getParameter("group");

		StringBuilder groupIDString = new StringBuilder();

		for (int iterator = groupRequest.indexOf("hobby/"); iterator < groupRequest.length(); iterator++) {
			if (Character.isDigit(groupRequest.charAt(iterator)) == true) {
				groupIDString.append(groupRequest.charAt(iterator));
			}
		}
		int groupId = 0;

		if (groupIDString.length() != 0) {
			groupId = Integer.parseInt(groupIDString.toString());
		
		
		final AsyncContext asyncContext = request.startAsync(request, response);
		asyncContext.setTimeout(10 * 60 * 1000);
		
		LinkedList<AsyncContext> list=new LinkedList<>();
		if(contexts.get(new Integer(groupId))!=null)		
			list.addAll(contexts.get(new Integer(groupId)));

		list.add(asyncContext);
		contexts.put(new Integer(groupId),list);
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
				String groupRequest = (String) request.getParameter("group");
				if (groupRequest != null) {
					StringBuilder groupIDString = new StringBuilder();

					for (int iterator = groupRequest.indexOf("hobby/"); iterator < groupRequest.length(); iterator++) {
						if (Character.isDigit(groupRequest.charAt(iterator)) == true) {
							groupIDString.append(groupRequest.charAt(iterator));
						}
					}
					int groupId = 0;

					if (groupIDString.length() != 0) {
						groupId = Integer.parseInt(groupIDString.toString());

						String message = XssParse.parseXSS(request.getParameter("nume"));// aplicat
																		// xss
																		// stripping
																		// si
																		// apoi
																		// inserat
						PostariFacade postariFacade = new PostariFacade();
						Group group=new GroupFacade().getGroupForID(groupId);


						try {
							postariFacade.postInGroup(user, group.getIdGroup(), message);
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

						List<AsyncContext> listOfContex=asyncContexts.get(group.getIdGroup());
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
