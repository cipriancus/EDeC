package ro.oho.rest.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ro.oho.rest.model.User;
import ro.oho.rest.utils.SendMail;
/**
 * Servlet implementation class ContactPage
 */
@WebServlet("/ContactPage")
public class ContactPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactPage() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	

    	response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try{
			String pass="ohoproject";
			String name= request.getParameter("name");
			String email= request.getParameter("email");
			String subiect= request.getParameter("subiect");
			String text= request.getParameter("mesaj");
			text= "Mesajul a fost scris de catre:"+name+ " \n"+ "Email:" + email + "\n" + text;
			
			SendMail.send("aga.tandu.10@gmail.com",subiect, text,"aga.tandu.10",pass);
			RequestDispatcher rd = request.getRequestDispatcher("jsp/Contact.jsp");
			rd.forward(request, response);
		}
		finally
		{
			out.close();
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
		processRequest(request, response);
	}

}
