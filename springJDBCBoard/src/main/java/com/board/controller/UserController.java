package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.User;
import com.board.service.UserService;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/insertForm")
	public String userInsertForm(Model model) {
		return "user/insertForm";
	}

	@PostMapping("/insert")
	public String insertUser(Model model, User user) {
		int count;
		try {
			count = userService.insertUser(user);
			if (count > 0) {
				model.addAttribute("message", "등록이 성공하였습니다.");
				return "user/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "등록이 실패하였습니다.");
		return "user/failed";
	}

	@GetMapping("/userList")
	public String selectUserList(Model model, User user) {
		List<User> userList;
		try {
			userList = userService.userList();
			model.addAttribute("userList", userList);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "user/userList";
	}

	@GetMapping("/detail")
	public String detailUser(Model model, User u) {
		log.info(u.toString());
		try {
			User user = userService.selectByNo(u);
			if (user == null) {
				model.addAttribute("message", "상세정보 조회를 실패했습니다.");
				return "user/failed";
			}
			model.addAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "user/detail";
	}

	@GetMapping("/delete")
	public String deleteUser(Model model, User user) {
		try {
			int count = userService.deleteUser(user);
			if (count > 0) {
				model.addAttribute("message", "삭제 성공하였습니다.");
				return "user/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "삭제 실패하였습니다.");
		return "user/failed";
	}

	@GetMapping("/update")
	public String postMethodName(Model model, User u) {
		User user;
		try {
			user = userService.selectByNo(u);
			if (user == null) {
				model.addAttribute("message", "정보를 부를수 없습니다.");
				return "user/failed";
			}
			model.addAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "user/updateForm";
	}

	@PostMapping("/update")
	public String userUpdateForm(Model model, User user) {
		log.info(user.toString());
		try {
			int count = userService.updateUser(user);
			if (count > 0) {
				model.addAttribute("message", "수정 성공하였습니다.");
				return "user/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "수정 실패하였습니다.");
		return "user/failed";
	}

	@GetMapping("/search")
	public String userSearch(Model model, User user) {
		log.info(user.toString());
		List<User> userList;
		try {
			userList = userService.userSearch(user);
			model.addAttribute("userList", userList);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "user/userList";
	}
	@GetMapping("/login")
	public String loginForm(Model model) {
		return "user/login";
	}
	@PostMapping("/login")
	public String loginUser(Model model, User u) {
		try {
			User user = userService.loginUser(u);
			if (user == null) {
				model.addAttribute("message", "로그인 실패하였습니다.");
				return "user/failed";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "로그인 성공하였습니다.");
		return "user/userForm";
	}


}
