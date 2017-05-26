package com.gary.hummingbirdSystem.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 登录注销
 * 
 * @author Gary
 * 
 * @date 2017年5月24日
 */
@Controller
public class LoginLogoutController {
	private static Logger log = Logger.getLogger(LoginLogoutController.class);

	/*
	 * 登录
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username,
			@RequestParam("password") String password) {
		log.info("用户登录成功！");
		return "/dataSourceMgr/dataSourceList";
	}

	/*
	 * 注销
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(ModelMap modelMap) {
		ModelAndView view = new ModelAndView();
		view.setViewName("/../../login");
		return view;
	}

}
