package org.ndt.service;

import java.util.List;

import org.ndt.dao.BookDAO;
import org.ndt.entity.Book;

public class BookService {
	
	
	public static List<Book> getBook(String searchTitle)
	{
		BookDAO dao = new BookDAO();
		return dao.getBook(searchTitle);
	}

}
