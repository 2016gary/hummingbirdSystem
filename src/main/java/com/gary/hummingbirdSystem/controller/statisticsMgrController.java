package com.gary.hummingbirdSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 统计图表管理
 * 
 * @author Gary
 * 
 * @date 2017年6月1日
 */
@Controller
@RequestMapping("/statisticsMgr")
public class statisticsMgrController {
	/**
	 * 统计图表页面
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/staticalChart")
	public ModelAndView dataSourceList(ModelMap modelMap) {
		ModelAndView view = new ModelAndView();
		view.setViewName("/statisticsMgr/staticalChart");
		view.addObject("viewName", view.getViewName());
		return view;
	}

}
