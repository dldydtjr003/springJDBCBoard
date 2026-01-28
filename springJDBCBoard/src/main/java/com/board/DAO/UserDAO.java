package com.board.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.board.domain.User;

@Repository
public class UserDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int insertUser(User user) {
		String query = "INSERT INTO USERS VALUES ( ?, ?, ?)";
		int count = jdbcTemplate.update(query,user.getName(),user.getId(),user.getPassword());
		return count;
	}

	public List<User> userList() {
		String query = "SELECT * FROM USERS";
		List<User> userList = jdbcTemplate.query(query, new RowMapper<>(){

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				return user;
			}
		});
		return userList;
	}

	public int deleteUser(User user) {
		String query = "DELETE FROM USERS WHERE NAME = ?";
		int count = jdbcTemplate.update(query,user.getName());
		return count;
	}

	public User selectByNo(User user) {
		String query = "SELECT * FROM USERS WHERE NAME = ?";
		List<User> userList = jdbcTemplate.query(query, new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				return user;
			}
		},user.getName());
		return userList.isEmpty() ? null : userList.get(0);
	}

	public int updateUser(User user) {
		String query = "UPDATE USERS SET ID = ?, PASSWORD = ? WHERE NAME = ?";
		int count = jdbcTemplate.update(query,user.getId(),user.getPassword(),user.getName());
		return count;
	}

	public List<User> userSearch(User user) {
		String query = "SELECT * FROM USERS WHERE NAME LIKE '%'||?||'%'";
		List<User> userList = jdbcTemplate.query(query, new RowMapper<User>(){

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				return user;
			}
		},user.getName());
		return userList;
	}

	public User loginUser(User user) {
		String query = "SELECT * FROM USERS WHERE ID = ? AND PASSWORD = ?";
		List<User> userList = jdbcTemplate.query(query,new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				return user;
			}
		},user.getId(),user.getPassword());
		return userList.isEmpty() ? null : userList.get(0);
	}
}
