package org.ndt.entity;

public class Book {
	
	private int book_Isbn;
	private String book_Title;
	private int price;
	private String category;
	private int no_of_Books;
	private Author author;
	public int orderQuantity;
	private Object qtyOrdered;
	
	public int getBook_Isbn() {
		return book_Isbn;
	}
	public void setBook_Isbn(int book_Isbn) {
		this.book_Isbn = book_Isbn;
	}
	public String getBook_Title() {
		return book_Title;
	}
	public void setBook_Title(String book_Title) {
		this.book_Title = book_Title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getNo_of_Books() {
		return no_of_Books;
	}
	public void setNo_of_Books(int no_of_Books) {
		this.no_of_Books = no_of_Books;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	public Book(int book_Isbn, String book_Title, int price, String category,
			int no_of_Books, Author author) {
		super();
		this.book_Isbn = book_Isbn;
		this.book_Title = book_Title;
		this.price = price;
		this.category = category;
		this.no_of_Books = no_of_Books;
		this.author = author;
	}
	
	public Book(int bookIsbn, String bookTite,int bookprice) {
			this.book_Isbn=bookIsbn;
			this.book_Title=bookTite;
			this.price=bookprice;
	}
	public void setQtyOrdered(int newQty) {
		this.qtyOrdered = qtyOrdered;
	}
	

}
