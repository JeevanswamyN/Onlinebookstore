package org.ndt.service;

import org.ndt.dao.UserDAO;
import org.ndt.entity.User;

public class UserService {
	

	public static User authonticate(String uname, String password) {
		UserDAO dao = new UserDAO();
		return  dao.getUser(uname, password);
	}

	public static boolean create(User user) 
	{
		UserDAO dao = new UserDAO();
		return dao.create(user);
	}

}
