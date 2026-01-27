package com.board.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.board.domain.Member;

@Repository
public class MemberDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int insertMember(Member member) {
		String query = "INSERT INTO MEMBER VALUES (?,?,?)";
		int Count = jdbcTemplate.update(query,member.getName(),member.getId(),member.getPassword());
		return Count;
	}

	public List<Member> memberList() {
		String query = "SELECT * FROM MEMBER";
		List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setName(rs.getString("name"));
				member.setId(rs.getString("id"));
				member.setPassword(rs.getString("password"));
				
				return member;
			}
		});
		return memberList;
	}
	
	
}
