package com.personal.dao;

import com.personal.model.MemberDTO;

public interface MemberDAO {
	
	public boolean addMember(MemberDTO member) throws Exception;
	
}