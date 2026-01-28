package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.Board;
import com.board.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/board")
public class BoardController {

	// 1. 컨트롤러 생성
	@Autowired
	private BoardService boardService;

	@GetMapping("/insertForm")
	public String insertForm(Model model) {
		return "board/insertForm";
	}

	@PostMapping("/insert")
	public String boardInsert(Board board, Model model) {
		log.info("insert board = " + board.toString());
		try {
			int Count = boardService.insertBoard(board);
			if (Count > 0) {
				model.addAttribute("message", "%s님의 게시물 등록이 성공했습니다.".formatted(board.getWriter()));
				return "board/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "%s님의 게시물 등록이 실패했습니다.".formatted(board.getWriter()));
		return "board/failed";
	}

	@GetMapping("/boardList")
	public String boardList(Model model) {
		log.info("boardList");
		try {
			List<Board> boardList = boardService.boardList();
			model.addAttribute("boardList", boardList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "board/boardList";
	}

	@GetMapping("/detail")
	public String boardDetail(Board b, Model model) {
		log.info("boardDetail board = " + b.toString());
		try {
			Board board = boardService.selectByNo(b);
			if (board == null) {
				model.addAttribute("message", "%d번님의 상세정보 조회 실패했습니다.".formatted(b.getNo()));
				return "board/failed";
			}
			model.addAttribute("board", board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "board/detail";
	}

	@GetMapping("/delete")
	public String deleteBoard(Board board, Model model) {
		log.info("deleteBoard board = " + board.toString());
		try {
			int Count = boardService.deleteBoard(board);
			if (Count > 0) {
				model.addAttribute("message", "%d번님의 정보가 삭제 성공했습니다.".formatted(board.getNo()));
				return "board/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "%d번님의 정보가 삭제 실패했습니다.".formatted(board.getNo()));
		return "board/failed";
	}

	@GetMapping("/updateForm")
	public String boardUpdateForm(Board b, Model model) {
		log.info("boardUpdateForm board = " + b.toString());
		try {
			Board board = boardService.selectByNo(b);
			if (board == null) {
				model.addAttribute("message", "%d번님의 정보없습니다.".formatted(b.getNo()));
				return "board/success";
			}
			model.addAttribute("board", board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "board/updateForm";
	}

	@PostMapping("/update")
	public String boardUpdate(Board b, Model model) {
		log.info("boardUpdate board = " + b.toString());
		try {
			int Count = boardService.updateBoard(b);
			if (Count > 0) {
				model.addAttribute("message", "%s번님의 게시판 수정완료 했습니다.".formatted(b.getWriter()));
				return "board/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "%s번님의 게시판 수정실패 했습니다.".formatted(b.getWriter()));
		return "board/failed";
	}

	@GetMapping("/search")
	public String boardSearch(Board board,Model model) {
		log.info("boardSearch board = " + board.toString());
		try {
			List<Board> boardList = boardService.boardSearch(board);
			model.addAttribute("boardList", boardList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "board/boardList";
	}

}
