package com.personal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
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
	
	@RequestMapping(value="join.do", method={RequestMethod.GET, RequestMethod.POST})
	public String join() throws Exception {
		
		logger.info("join.do 접근 ");
		
		return "join.tiles";
	}
}