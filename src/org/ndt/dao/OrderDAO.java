package org.ndt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.ndt.entity.OrderItem;
import org.ndt.entity.OrderTable;

import com.sun.rowset.internal.Row;

public class OrderDAO {
	
	private static final String sql="insert into orderitems(userid,bookisbn,booktitle,bookprice)" +" values(?,?,?,?)";
	private static final String table_sql="insert into ordertable(username,totalamt) values(?,?)";
	ResultSet keySet;
	public int ordertable(OrderTable order)
	{	
		int row=0;
		int key=0;
		Connection conn = DBManager.getConnection();
		try {
			PreparedStatement ps= conn.prepareStatement(table_sql);
			ps.setString(1, order.getUsername());
			ps.setInt(2, order.getTotalamt());
			row=ps.executeUpdate();
			keySet=ps.getGeneratedKeys();
			while(keySet.next()&&keySet!=null)
			{
				key=keySet.getInt(1);
				System.out.println(key);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return key;
	}
	
	public boolean orderitems(OrderItem item,int key)
	{
		int row = 0;
		Connection conn = DBManager.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, key);
			ps.setString(2, item.getBookIsbn());
			ps.setString(3, item.getBookTitle());
			ps.setInt(4, item.getBookprice());
		
			row=ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return row>0;
		
	}

	public List<OrderTable> getorderhistory(String username)
	{
		String sql="select u.username,b.book_isbn,b.book_title,b.book_price,o.userid from user u,book b,ordertable o,orderitems oa where o.username=u.username and oa.bookisbn=b.book_isbn and o.userid=oa.userid and u.username=?";
		List<OrderTable> oList=new ArrayList<OrderTable>();
		Connection conn=DBManager.getConnection();
		boolean flag=false;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				
				OrderItem orderItem=new OrderItem(rs.getString(3), rs.getString(4),rs.getInt(5));
				OrderTable orderTable=new OrderTable(rs.getString(1), rs.getInt(2),orderItem);
				oList.add(orderTable);
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return  oList;
	}
}

