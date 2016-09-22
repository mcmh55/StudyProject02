package com.personal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.personal.dao.MemberDAO;
import com.personal.model.MemberDTO;
import com.personal.service.MemberService;

@Service
public class MemberImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public boolean addMember(MemberDTO member) throws Exception {
		return memberDAO.addMember(member);
	}

	@Override
	public int sameCheckId(MemberDTO member) throws Exception {
		return memberDAO.sameCheckId(member);
	}

	@Override
	public MemberDTO selectMemberLogin(MemberDTO member) throws Exception {
		return memberDAO.selectMemberLogin(member);
	}
	
	@Override
	public MemberDTO selectMemberActive(MemberDTO member) throws Exception {
		return memberDAO.selectMemberActive(member);
	}

	@Override
	public void updateMemberActive(String memberId) throws Exception {
		memberDAO.updateMemberActive(memberId);
	}
}