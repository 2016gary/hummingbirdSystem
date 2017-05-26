package com.gary.hummingbirdSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 管理页面
 * 
 * @author Gary
 * 
 * @date 2017年5月11日
 */
@Controller
@RequestMapping("/ETLMgr")
public class ETLMgrController {
	/**
	 * 页面
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/etlList")
	public ModelAndView dataSourceList(ModelMap modelMap) {
		ModelAndView view = new ModelAndView();
		view.setViewName("/ETLMgr/etlList");
		view.addObject("viewName", view.getViewName());
		return view;
	}

}
