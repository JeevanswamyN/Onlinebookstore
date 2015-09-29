package org.ndt.entity;

public class OrderTable {
	private String username;
	private int totalamt;
	private OrderItem orderItem;
	public OrderTable(String username, int totalamt) {
		super();
		this.username = username;
		this.totalamt = totalamt;
	}

	public OrderItem getOrderItem() {
		return orderItem;
	}

	public void setOrderItem(OrderItem orderItem) {
		this.orderItem = orderItem;
	}

	public OrderTable(String username, int totalamt, OrderItem orderItem) {
		super();
		this.username = username;
		this.totalamt = totalamt;
		this.orderItem = orderItem;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getTotalamt() {
		return totalamt;
	}
	public void setTotalamt(int totalamt) {
		this.totalamt = totalamt;
	}
	
	

}
