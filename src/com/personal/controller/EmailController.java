package com.personal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.personal.model.EmailDTO;
import com.personal.model.MemberDTO;
import com.personal.service.MemberService;
import com.personal.util.EmailSender;

@Controller
public class EmailController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private EmailSender emailSender;

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "emailSendAction.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String emailSendAction(MemberDTO member) throws Exception {

		logger.info("emailSendAction.do 접근 ");
		logger.info("member: " + member);

		MemberDTO searchMember = new MemberDTO();
		searchMember = memberService.selectMemberActive(member);
		
		logger.info("searchMember: " + searchMember);

		EmailDTO email = new EmailDTO();

		String reciver = searchMember.getMember_email();
		String subject = "회원 인증 이메일입니다.";
	//	String content = "<a href='http://211.201.221.169:8090/PersonalProject01/member_active.do?active=true'>인증 페이지로 이동</a>";
		String content = "<a href='http://localhost:8090/PersonalProject01/member_active.do?active=true'>인증 페이지로 이동</a>";

		email.setReciver(reciver);
		email.setSubject(subject);
		email.setContent(content);
		emailSender.SendEmail(email);

		return "login.tiles";
	}
}