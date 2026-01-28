package com.board.service;

import java.util.List;

import com.board.domain.User;

public interface UserService {

	public int insertUser(User user)throws Exception; 
	public User selectByNo(User user) throws Exception; 
	public int updateUser(User user) throws Exception; 
	public int deleteUser(User user) throws Exception; 
	public List<User> userList() throws Exception; 
	public List<User> userSearch(User user) throws Exception;
	public User loginUser(User u) throws Exception;
}
