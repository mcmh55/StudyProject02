package com.personal.dao.impl;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.personal.dao.MemberDAO;
import com.personal.model.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	/*@Resource(name = "sqlSession")*/
	@Autowired
	private SqlSession sqlSession;
	private String ns = "Member.";	// namespace
	
	@Override
	public boolean addMember(MemberDTO member) throws Exception {
		
		sqlSession.insert(ns + "addMember", member);
		return true;
	}
}