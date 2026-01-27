package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.DAO.MemberDAO;
import com.board.domain.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	@Override
	public int insertMember(Member member) throws Exception {
		int Count = memberDAO.insertMember(member); 
		return Count;
	}

	@Override
	public Member selectByNo(Member member) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Member> memberList() throws Exception {
		List<Member> memberList = memberDAO.memberList();
		return memberList;
	}

}
