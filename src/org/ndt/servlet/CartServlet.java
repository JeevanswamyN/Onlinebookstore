package org.ndt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ndt.entity.Book;
import org.ndt.entity.Cart;

/**
 * Servlet implementation class CartServlet
 */
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
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
		PrintWriter out = response.getWriter();
		String action=request.getParameter("ACTION");
		
	      HttpSession session = request.getSession(true);
	      Cart cart;
	      System.out.println(action);
	      synchronized (session) {  
	         cart = (Cart) session.getAttribute("cart");
	         if (cart == null) {  
	            cart = new Cart();
	            session.setAttribute("cart", cart);  
	         }
	      }
	      

	      	    if (action.equals("ADD") || action.equals("remove")|| action.equals("order") )
	      	    {
	    	  
	      		
			      if (action.equals("ADD"))
			      {
			    	  
			      	    int bookisbn=Integer.parseInt(request.getParameter("hdnbookIsbn"));
			      	    String hprice=request.getParameter("hdnbookprice");
			            String title=request.getParameter("hdnbookTitle");
			            
			            
			           int price=0;
			            if(hprice!=null)
			      		{
			            	
			      			price= Integer.parseInt(hprice);
			      		}
			            
			      		
			            Book item=new Book(bookisbn, title, price);
			            
			    	  cart.add(item);
			    	  RequestDispatcher rd=request.getRequestDispatcher("displaycart.jsp");
						rd.forward(request, response);
			      }
			      else if(action.equals("remove"))
			      {
			    	  int hisbn=Integer.parseInt(request.getParameter("hdnid"));
			    	  System.out.println(hisbn);
			    	  cart.remove(hisbn);
			    	  RequestDispatcher rd=request.getRequestDispatcher("displaycart.jsp");
						rd.forward(request, response);
			      }
			      else if(action.equals("order"))
		      	   {
		      	    	response.sendRedirect("login.jsp");
		      	   }
			     
	      	      }
			}		
	}    

	


