package org.ndt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.ndt.entity.User;

public class UserDAO {

	private User user=null;
	public User getUser(String uname, String password) {
		String sql="select username,password,emailid,city,state,phno from user where username=? and password=?";
		Connection conn=DBManager.getConnection();
		ResultSet rs=null;
		boolean flag=false;
		try {
			PreparedStatement ps =conn.prepareStatement(sql);
			
			ps.setString(1, uname);
			ps.setString(2, password);
			 rs= ps.executeQuery();
			 while(rs!=null&&rs.next())
				{

					user=new User((rs.getString(1)), (rs.getString(2)),(rs.getString(3)),
							                (rs.getString(4)), (rs.getString(5)), (rs.getString(6)));
				 flag=true;
				}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	}
	private int row=0;
	private static final String CREATE_SQl="insert into user(username,password,emailid,city,state,phno) values(?,?,?,?,?,?)";
	public boolean create(User user) 
	{
		Connection conn=DBManager.getConnection();
		try 
		{
		PreparedStatement ps=conn.prepareStatement(CREATE_SQl);
		ps.setString(1, user.getUserName());
		ps.setString(2, user.getPassword());
		ps.setString(3, user.getEmail());
		ps.setString(4, user.getCity());
		ps.setString(5, user.getState());
		ps.setString(6, user.getPhno());
		row=ps.executeUpdate();
			
		conn.close();	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row>0;
		
	}
	
	
}
