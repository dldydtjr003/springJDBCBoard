package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.Member;
import com.board.service.MemberService;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestParam;





@RequestMapping("/member")
@Controller
@Slf4j
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/insertForm")
	public String insertForm(Model model) {
		return "member/insertForm";
	}
	@PostMapping("/insert")
	public String insertMember(Member member, Model model) {

		int Count;
		try {
			Count = memberService.insertMember(member);
			if(Count > 0) {
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}
	@GetMapping("memberList")
	public String memberList(Member member, Model model) {
		List<Member> memberList;
		try {
			memberList = memberService.memberList();
			model.addAttribute("memberList",memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/memberList";
	}

	
	
	
}
