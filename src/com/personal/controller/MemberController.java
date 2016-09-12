package com.personal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.personal.model.MemberDTO;
import com.personal.service.MemberService;
import com.personal.util.ResultMessage;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="joinAction.do", method=RequestMethod.POST)
	@ResponseBody
	public ResultMessage joinAction(MemberDTO member) {
		
		logger.info("joinAction.do 접근");
		
		ResultMessage resultMsg = null;
		
		try {
			
			memberService.addMember(member);
			resultMsg = new ResultMessage("Success");
			
		} catch (Exception e) {
			
			e.printStackTrace();
			resultMsg = new ResultMessage("Fail");
		}
		
		return resultMsg;
	}
	
	@RequestMapping(value="twinCheckId.do", method=RequestMethod.POST)
	@ResponseBody
	public ResultMessage twinCheckId(MemberDTO member) {
		
		logger.info("twinCheckId.do 접근");
		logger.info("member: " + member.toString());
		
		ResultMessage resultMsg = null;
		
		try {
			
			memberService.addMember(member);
			resultMsg = new ResultMessage("Success");
			
		} catch (Exception e) {
			
			e.printStackTrace();
			resultMsg = new ResultMessage("Fail");
		}
		
		return resultMsg;
	}
}