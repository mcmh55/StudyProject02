package com.personal.service;

import com.personal.model.MemberDTO;

public interface MemberService {

	boolean addMember(MemberDTO member) throws Exception;
	int sameCheckId(MemberDTO member) throws Exception;
	int selectMember(MemberDTO member) throws Exception;
}