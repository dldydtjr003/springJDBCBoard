package com.board.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.board.domain.Board;

@Repository
public class BoardDAO {

	// 4. DAO 생성
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int insertBoard(Board board) {
		String query = "insert into jdbcBoard values (jdbcboard_seq.nextval, ?, ?, ?, sysdate)";
		int Count = jdbcTemplate.update(query, board.getTitle(), board.getContent(), board.getWriter());
		return Count;
	}

	public List<Board> boardList() {
		String query = "select * from jdbcBoard where no > 0 order by no desc, regDate desc";
		List<Board> boardList = jdbcTemplate.query(query, new RowMapper<Board>() {
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				Board board = new Board();
				board.setNo(rs.getInt("no"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setWriter(rs.getString("writer"));
				board.setRegDate(rs.getDate("regDate"));
				return board;
			}
		});
		return boardList;
	}

	public Board selectByNo(Board board) {
		String query = "select * from jdbcBoard where no = ?";
		List<Board> boardList = jdbcTemplate.query(query, new RowMapper<Board>() {
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				Board board = new Board();
				board.setNo(rs.getInt("no"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setWriter(rs.getString("writer"));
				board.setRegDate(rs.getDate("regDate"));
				return board;
			}
		}, board.getNo());
		return boardList.isEmpty() ? null : boardList.get(0);
	}

	public int deleteBoard(Board board) {
		String query = "DELETE FROM jdbcBoard WHERE NO = ?";
		int Count = jdbcTemplate.update(query, board.getNo());
		return Count;
	}

	public int updateBoard(Board board) {
		String query = "UPDATE jdbcBoard SET WRITER = ?,TITLE = ?, CONTENT = ? WHERE NO = ?";
		int Count = jdbcTemplate.update(query, board.getWriter(), board.getTitle(), board.getContent(), board.getNo());
		return Count;
	}

	public List<Board> boardSearch(Board board) {
		// SELECT * FROM jdbcBoard WHERE NO > 0 AND TITLE LIKE '%T%';
		// SELECT * FROM jdbcBoard WHERE NO > 0 AND WRITER LIKE '%A%';
		// SELECT * FROM jdbcBoard WHERE NO > 0 AND CONTENT LIKE '%C%';
		String searchItem = board.getSearchType();
		List<String> searchList = Arrays.asList("title", "writer", "content");
		if (!searchList.contains(board.getSearchType())) {
			// 검색타입이 존재하지 않으면 기본검색은 title로 한다.
			searchItem = "title";
		}
		String query = "select * from jdbcBoard where " + searchItem +" like '%" + board.getKeyword() + "%'";

		List<Board> boardList = jdbcTemplate.query(query, new RowMapper<Board>() {
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				Board board = new Board();
				board.setNo(rs.getInt("no"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setWriter(rs.getString("writer"));
				board.setRegDate(rs.getDate("regDate"));
				return board;
			}
		});
		return boardList;
	}
}
