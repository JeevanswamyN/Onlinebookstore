package org.ndt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ndt.entity.User;
import org.ndt.service.UserService;

import sun.security.mscapi.PRNG;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("ACTION");
		PrintWriter out=response.getWriter();
		if(action!=null&&action.equals("LOGIN"))
		{
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		String msg=null;
		RequestDispatcher rd;
		User user=UserService.authonticate(uname, password);
		if(user!=null)
		{	
			System.out.println("hi");
			msg="login sucessfull";
			
			HttpSession session = request.getSession(true);
			request.setAttribute("USER", user);
			session.setAttribute("NAME", uname);
			rd=request.getRequestDispatcher("order.jsp");
			rd.forward(request, response);
		}
		else
		{	msg="unsucessfull";
			rd=getServletContext().getRequestDispatcher("/login.jsp");
			//request.setAttribute("MESSAGE", msg);
			rd.forward(request, response);
		}
	
		}
		else if("SEARCH".equals(action))
		{
			RequestDispatcher rd=request.getRequestDispatcher("search.jsp");
			rd.forward(request, response);
		}
		else if("REGISTER".equals(action))
		{
			RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
		else
		{
			String username= request.getParameter("username");
			String password=request.getParameter("password");
			String mailid= request.getParameter("email");
			String city= request.getParameter("city");
			String state= request.getParameter("state");
			String phno= request.getParameter("phNo");
			User user=new User(username, password, mailid, city, state, phno);
			if(UserService.create(user))
			{
				out.println("Successfully Created");
				request.getSession(true);
				HttpSession session=request.getSession(true);
				session.setAttribute("NAME", username);
				request.setAttribute("USER", user);
				RequestDispatcher rd=request.getRequestDispatcher("order.jsp");
				rd.forward(request, response);
			}
		}
		
	}


	}


