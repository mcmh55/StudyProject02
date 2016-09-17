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
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="board_list.do", method={RequestMethod.GET, RequestMethod.POST})
	public String boardList(MemberDTO member) {
		
		logger.info("board_list.do 접근");
		
		
		return "board_list.tiles";
	}
	
}