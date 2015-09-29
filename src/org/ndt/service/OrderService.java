package org.ndt.service;

import java.util.List;

import org.ndt.dao.OrderDAO;
import org.ndt.entity.Book;
import org.ndt.entity.OrderItem;
import org.ndt.entity.OrderTable;

public class OrderService {
	
	public static int ordertable(OrderTable order)
	{
		OrderDAO dao = new OrderDAO();
		int key= dao.ordertable(order);
		return key;
	}
	public static boolean orderitems(OrderItem item,int key)
	{
		OrderDAO dao = new OrderDAO();
		return dao.orderitems(item, key);
		
	}
	public static List<OrderTable> getorderhistory(String username)
	{
		OrderDAO dao=new OrderDAO();
		return dao.getorderhistory(username);
	}
}
