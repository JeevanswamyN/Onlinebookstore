package org.ndt.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ndt.entity.User;
import org.ndt.service.UserService;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);	
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("mailid");
		String city= request.getParameter("city");
		String state= request.getParameter("state");
		String phno= request.getParameter("phNo");
		User user = new User(uname, password, email, city, state, phno);
		 String msg=null;
		 RequestDispatcher rd;
		if(UserService.create(user))
		{
			msg="Sucessfully created";
			HttpSession session = request.getSession(true);
			session.setAttribute("USER_NAME", uname);
			rd=getServletContext().getRequestDispatcher("/WEB-INF/views/home.jsp");
		}
		else
		{
			msg="Failed!.Please contact admin";
			rd=getServletContext().getRequestDispatcher("/register.jsp");
		}
		
		request.setAttribute("MESSAGE", msg);
		rd.forward(request, response);
		
	}
		
}
	
	


