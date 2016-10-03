package com.personal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.personal.model.MemberDTO;
import com.personal.service.MemberService;
import com.personal.util.ResultMessage;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value="joinAction.do", method=RequestMethod.POST)
	@ResponseBody
	public ResultMessage joinAction(MemberDTO member, Model model) {
		
		logger.info("joinAction.do 접근");
		
		// 비밀번호 암호화
		String pwEcode = passwordEncoder.encode(member.getMember_pw());
		member.setMember_pw(pwEcode);
		
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
	
	@RequestMapping(value="sameCheckId.do", method=RequestMethod.POST)
	@ResponseBody
	public ResultMessage sameCheckId(MemberDTO member) {
		
		logger.info("sameCheckId.do 접근");
		
		ResultMessage resultMsg = null;
		int selectCnt = 0;
		
		try {
			selectCnt = memberService.sameCheckId(member);
			
			if ( selectCnt == 0 )	resultMsg = new ResultMessage("false");
			else					resultMsg = new ResultMessage("true");
		} catch (Exception e) {
			
			e.printStackTrace();
			resultMsg = new ResultMessage("Fail");
		}
		
		return resultMsg;
	}
	
	@RequestMapping(value="member_active.do", method={RequestMethod.GET, RequestMethod.POST})
	public String memberActive(HttpServletRequest request, Model model, String active) throws Exception {
		
		logger.info("member_active.do 접근 ");
		
		MemberDTO member = (MemberDTO) request.getSession().getAttribute("loginMember");
		model.addAttribute("loginMember", member);
		
		if ( active != null && active.equals("true") ) {
			memberService.updateMemberActive(member.getMember_id());
			model.addAttribute("active", "true");
		}
		
		return "member_active.tiles";
	}
	
	// 회원 로그인 정보 변경
	// 회원 인증 과정에서 세션에 저장되는 정보를 다시 확인해 볼 필요있음
	@RequestMapping(value="member_login.do", method={RequestMethod.GET, RequestMethod.POST})
	public String memberLogin(HttpServletRequest request,
							@RequestParam (value = "member_id") String memberId) throws Exception {
		
		logger.info("member_login.do 접근 ");
		
		MemberDTO member = memberService.selectMemberLoginInfo(memberId);
		
		HttpSession session = request.getSession();
		session.removeAttribute("loginMember");
		session.setAttribute("loginMember", member);
		session.setMaxInactiveInterval(60*60*24);	// 하루동안 유지
		
		logger.info("member: " + member.toString());
		
		return "redirect:/board_list.do";
	}
	
	// 회원정보 조회
	@RequestMapping(value="member_info.do", method={RequestMethod.GET, RequestMethod.POST})
	public String memberInfo() throws Exception {
		
		logger.info("member_info.do 접근 ");
		
		return "member_info.tiles";
	}
}