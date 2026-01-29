package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.board.DAO.BoardDAO;
import com.board.domain.Board;

@Service

public class BoardServiceImpl implements BoardService {

	//3. implements를 준다
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	@Transactional
	public int insertBoard(Board board) throws Exception {
		int Count = boardDAO.insertBoard(board);
		return Count;
	}

	@Override
	public Board selectByNo(Board b) throws Exception {
		Board board = boardDAO.selectByNo(b);
		return board;
	}

	@Override
	@Transactional
	public int updateBoard(Board board) throws Exception {
		int Count = boardDAO.updateBoard(board);
		return Count;
	}

	@Override
	@Transactional
	public int deleteBoard(Board board) throws Exception {
		int Count = boardDAO.deleteBoard(board);
		return Count;
	}

	@Override
	public List<Board> boardList() throws Exception {
		List<Board> boardList = boardDAO.boardList();
		return boardList;
	}
	@Override
	public List<Board> boardSearch(Board board) throws Exception {
		List<Board> boardList = boardDAO.boardSearch(board);
		return boardList;
	}

}
