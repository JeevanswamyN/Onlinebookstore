package org.ndt.entity;

public class OrderItem {
	private String bookIsbn;
	private String bookTitle;
	private int bookprice;
	private OrderTable orderTable;
	public String getBookIsbn() {
		return bookIsbn;
	}
	public void setBookIsbn(String bookIsbn) {
		this.bookIsbn = bookIsbn;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public int getBookprice() {
		return bookprice;
	}
	public void setBookprice(int bookprice) {
		this.bookprice = bookprice;
	}
	public OrderItem(String string, String bookTitle, int bookprice) {
		super();
		this.bookIsbn = string;
		this.bookTitle = bookTitle;
		this.bookprice = bookprice;
	}
	public OrderItem(String bookIsbn, String bookTitle, int bookprice,
			OrderTable orderTable) {
		super();
		this.bookIsbn = bookIsbn;
		this.bookTitle = bookTitle;
		this.bookprice = bookprice;
		this.orderTable = orderTable;
	}
	public OrderTable getOrderTable() {
		return orderTable;
	}
	public void setOrderTable(OrderTable orderTable) {
		this.orderTable = orderTable;
	}

	

}
