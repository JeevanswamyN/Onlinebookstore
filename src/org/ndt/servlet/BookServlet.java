package org.ndt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ndt.entity.Book;
import org.ndt.service.BookService;

/**
 * Servlet implementation class BookServlet
 */
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
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
		String bookTitle=request.getParameter("bookTitle");
		List<Book> list=BookService.getBook(bookTitle);
		String msg=null;
		PrintWriter out =response.getWriter();
		for(Book b:list)
		
		{
			out.print(b);
		}
		request.setAttribute("USERLIST", list);
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/views/home.jsp");
		rd.forward(request, response);
	}

}
