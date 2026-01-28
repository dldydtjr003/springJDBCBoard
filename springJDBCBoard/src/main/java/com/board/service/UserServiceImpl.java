package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.DAO.UserDAO;
import com.board.domain.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	@Override
	public int insertUser(User user) throws Exception {
		int count = userDAO.insertUser(user);
		return count;
	}

	@Override
	public User selectByNo(User u) throws Exception {
		User user = userDAO.selectByNo(u);
		return user;
	}

	@Override
	public int updateUser(User user) throws Exception {
		int count = userDAO.updateUser(user);
		return count;
	}

	@Override
	public int deleteUser(User user) throws Exception {
		int count = userDAO.deleteUser(user);
		return count;
	}

	@Override
	public List<User> userList() throws Exception {
		List<User> userList = userDAO.userList();
		return userList;
	}

	@Override
	public List<User> userSearch(User user) throws Exception {
		List<User> userList = userDAO.userSearch(user);
		return userList;
	}

	@Override
	public User loginUser(User u) throws Exception {
		User user = userDAO.loginUser(u);
		return user;
	}

}
