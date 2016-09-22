package com.personal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="main.do", method={RequestMethod.GET, RequestMethod.POST})
	public String main() throws Exception {
		
		logger.info("main.do 접근 ");
		
		return "main.tiles";
	}
	
	@RequestMapping(value="login.do", method={RequestMethod.GET, RequestMethod.POST})
	public String login() throws Exception {
		
		logger.info("login.do 접근 ");
		
		return "login.tiles";
	}
	
	@RequestMapping(value="loginAction.do", method=RequestMethod.POST)
	@ResponseBody
	public ResultMessage loginAction(MemberDTO member, HttpServletRequest request, HttpServletResponse response) {
		
		logger.info("loginAction.do 접근 ");
		
		MemberDTO searchMember = new MemberDTO();
		ResultMessage resultMsg = null;
		
		try {
			searchMember = memberService.selectMemberLogin(member);
			
			if ( searchMember != null ) {
				request.getSession().setAttribute("loginMember", searchMember);
				
				if ( searchMember.getMember_active() > 0 ) {
					resultMsg = new ResultMessage("2");		// 회원 인증된 유저
				}
				
				resultMsg = new ResultMessage("1");			// 인증하지 않은 유저
				
			} else {
				resultMsg = new ResultMessage("0");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			resultMsg = new ResultMessage("Fail");
		}
		
		return resultMsg;
	}
	
	@RequestMapping(value="join.do", method={RequestMethod.GET, RequestMethod.POST})
	public String join() throws Exception {
		
		logger.info("join.do 접근 ");
		
		return "join.tiles";
	}
}