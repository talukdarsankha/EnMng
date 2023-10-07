package com.abc.dao;

import com.abc.entity.User;

public interface UserDao {

	public int saveUser(User us);
	public User loginUser(String email,String password);
}
