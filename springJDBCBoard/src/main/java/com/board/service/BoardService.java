package com.board.service;

import java.util.List;

import com.board.domain.Board;

public interface BoardService {

	//2. interface로 curd 서비스 생성
	public int insertBoard(Board board) throws Exception; 
	public Board selectByNo(Board board) throws Exception; 
	public int updateBoard(Board board) throws Exception; 
	public int deleteBoard(Board board) throws Exception; 
	public List<Board> boardList() throws Exception; 
}
