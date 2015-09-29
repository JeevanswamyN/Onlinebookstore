package org.ndt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ndt.entity.Book;
import org.ndt.entity.OrderTable;
import org.ndt.entity.User;
import org.ndt.service.OrderService;

/**
 * Servlet implementation class OrderHistory
 */
public class OrderHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderHistory() {
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
	String username=(String)request.getParameter("hdnusername");
	
	List<OrderTable> olist=OrderService.getorderhistory(username);
	String msg=null;
	PrintWriter out =response.getWriter();
	if(olist!=null)
	{
		System.out.println("hi username"+username);
	}
	else
	{
		System.out.println("null");
	}
	for(OrderTable b:olist)
	
	{
		System.out.println("hi");
		msg="history of records";
	}
	
	request.setAttribute("USERLIST", olist);
	RequestDispatcher rd=request.getRequestDispatcher("history.jsp");
	rd.forward(request, response);
}

	}


