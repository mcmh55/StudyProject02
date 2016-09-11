package com.personal.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.personal.dao.MemberDAO;
import com.personal.model.MemberDTO;
import com.personal.service.MemberService;

@Service
public class MemberImpl implements MemberService{

	/*@Resource(name = "memberDAO")*/
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public boolean addMember(MemberDTO member) throws Exception {
		return memberDAO.addMember(member);
	}
}