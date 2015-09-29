package org.ndt.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.catalina.Session;
import org.ndt.entity.Book;
import org.ndt.entity.Cart;
import org.ndt.entity.OrderItem;
import org.ndt.entity.OrderTable;
import org.ndt.service.OrderService;

/**
 * Servlet implementation class OrderServlet
 */
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
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
		HttpSession session=request.getSession(true);
		
		Cart cart=(Cart) session.getAttribute("cart"); 
			List<Book> items=cart.getItems();
			String username=request.getParameter("username");
			String msg=null;
			int isbn=0;
			int price=0;
			String title=null;
			
			int totalAmt=Integer.parseInt(request.getParameter("totalAmt"));
			OrderTable order=new OrderTable(username, totalAmt);

			int  key=OrderService.ordertable(order);
			if(key!=0)
			{
				System.out.println("confirmed");
			for(Book item: items)
			{
				 isbn=item.getBook_Isbn();
				 title=item.getBook_Title();
				 price=item.getPrice();
			
				OrderItem oitem=new OrderItem(isbn, title, price);
				if(OrderService.orderitems(oitem, key))
				{
					System.out.println("cart confirmed");
					msg=" custer order id is:\n"+key;
				}
				else
				{
					System.out.println("failure");
				}
			}
			cart.clear();
			}
			else
			{
				System.out.println("order failure;;;;!!!!....");
			}
			
			session.setAttribute("NAME", username);
		request.setAttribute("MESSAGE", msg);
		RequestDispatcher rd= request.getRequestDispatcher("confirm.jsp");
		rd.forward(request, response);
	}

}
