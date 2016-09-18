package com.personal.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.personal.model.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private String ns = "Member.";	// namespace
	
	public boolean addMember(MemberDTO member) throws Exception {
		
		sqlSession.insert(ns + "addMember", member);
		return true;
	}
	
	public int sameCheckId(MemberDTO member) throws Exception {
		return sqlSession.selectOne(ns + "sameCheckId", member);
	}
	
	public MemberDTO selectMemberLogin(MemberDTO member) throws Exception {
		return sqlSession.selectOne(ns + "selectMemberLogin", member);
	}
	
	public MemberDTO selectMemberActive(MemberDTO member) throws Exception {
		return sqlSession.selectOne(ns + "selectMemberActive", member);
	}
}