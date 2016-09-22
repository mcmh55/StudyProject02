package com.personal.service;

import com.personal.model.MemberDTO;

public interface MemberService {

	boolean addMember(MemberDTO member) throws Exception;
	int sameCheckId(MemberDTO member) throws Exception;
	MemberDTO selectMemberLogin(MemberDTO member) throws Exception;
	MemberDTO selectMemberActive(MemberDTO member) throws Exception;
	void updateMemberActive(String memberId) throws Exception;
}