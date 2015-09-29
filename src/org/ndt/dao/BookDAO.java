package org.ndt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ndt.entity.Author;
import org.ndt.entity.Book;

public class BookDAO {
	
	
	private static final String SEARCH_SQL="select b.book_isbn,b.book_title,b.book_price,b.category,b.no_of_books,a.author_nmae,author_mail_Id from book b,author a  where b.book_isbn=a.book_isbn and b.book_title=?"; 
	
	
		public  List<Book> getBook(String searchTitle)
		{
			Connection conn =DBManager.getConnection();
			List<Book> list=new ArrayList<Book>();
			
			  try 
			  {
				PreparedStatement ps=conn.prepareStatement(SEARCH_SQL);
				ps.setString(1, searchTitle);
				ResultSet rs= ps.executeQuery();
		
					while(rs!=null && rs.next())
					{
						
						Author a=new Author(rs.getString(6), rs.getString(7));
						Book b=new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5),a);
						list.add(b);
					}}
				catch (SQLException e) 
				{
					e.printStackTrace();
			    }
			return list;
}}
