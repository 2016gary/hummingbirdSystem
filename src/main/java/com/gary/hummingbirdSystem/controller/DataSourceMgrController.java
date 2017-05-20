package com.gary.hummingbirdSystem.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gary.hummingbirdSystem.model.DataModel;
import com.gary.hummingbirdSystem.model.DataSource;
import com.gary.hummingbirdSystem.model.MultiDimensionAnalysis;
import com.gary.hummingbirdSystem.service.IDataSourceService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;

/**
 * 数据源管理页面
 * 
 * @author Gary
 * 
 * @date 2017年5月11日
 */
@Controller
@RequestMapping("/dataSourceMgr")
public class DataSourceMgrController {
	@Autowired
	private IDataSourceService iDataSourceService;

	/**
	 * 数据源页面
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/dataSourceList")
	public ModelAndView dataSourceList(ModelMap modelMap) {
		ModelAndView view = new ModelAndView();
		view.setViewName("/dataSourceMgr/dataSourceList");
		view.addObject("viewName", view.getViewName());
		return view;
	}

	/**
	 * 数据源列表展示
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/showDataSourceList")
	@ResponseBody
	public String showDataSourceList(HttpServletRequest request,
			HttpServletResponse response) {
		int draw = Integer.valueOf(request.getParameter("draw"));
		int start = Integer.valueOf(request.getParameter("start"));
		int length = Integer.valueOf(request.getParameter("length"));
		JsonObject jsonResponse = new JsonObject();
		PageHelper.startPage(start / length + 1, length);
		List<DataSource> dataSourceList = iDataSourceService
				.findDataSourceList();
		jsonResponse.addProperty("draw", draw);
		jsonResponse.addProperty("recordsTotal",
				((Page<DataSource>) dataSourceList).getTotal());
		jsonResponse.addProperty("recordsFiltered",
				((Page<DataSource>) dataSourceList).getTotal());
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm")
				.create();
		jsonResponse.add("data", gson.toJsonTree(dataSourceList));
		return jsonResponse.toString();
	}

	/**
	 * 数据模型页面
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/dataModelList")
	public ModelAndView dataModelList(ModelMap modelMap) {
		ModelAndView view = new ModelAndView();
		view.setViewName("/dataSourceMgr/dataModelList");
		view.addObject("viewName", view.getViewName());
		return view;
	}

	/**
	 * 数据源列表展示
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/showDataModelList")
	@ResponseBody
	public String showDataModelList(HttpServletRequest request,
			HttpServletResponse response) {
		int draw = Integer.valueOf(request.getParameter("draw"));
		int start = Integer.valueOf(request.getParameter("start"));
		int length = Integer.valueOf(request.getParameter("length"));
		JsonObject jsonResponse = new JsonObject();
		PageHelper.startPage(start / length + 1, length);
		List<DataModel> dataModelList = iDataSourceService.findDataModelList();
		jsonResponse.addProperty("draw", draw);
		jsonResponse.addProperty("recordsTotal",
				((Page<DataModel>) dataModelList).getTotal());
		jsonResponse.addProperty("recordsFiltered",
				((Page<DataModel>) dataModelList).getTotal());
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm")
				.create();
		jsonResponse.add("data", gson.toJsonTree(dataModelList));
		return jsonResponse.toString();
	}

	/**
	 * 维度指标页面
	 * 
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/dimensionList")
	public ModelAndView dimensionIndexList(ModelMap modelMap) {
		ModelAndView view = new ModelAndView();
		view.setViewName("/dataSourceMgr/dimensionList");
		view.addObject("viewName", view.getViewName());
		return view;
	}

	/**
	 * 维度指标列表展示
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/showDimensionList")
	@ResponseBody
	public String showDimensionList(HttpServletRequest request,
			HttpServletResponse response) {
		int draw = Integer.valueOf(request.getParameter("draw"));
		int start = Integer.valueOf(request.getParameter("start"));
		int length = Integer.valueOf(request.getParameter("length"));
		JsonObject jsonResponse = new JsonObject();
		PageHelper.startPage(start / length + 1, length);
		List<MultiDimensionAnalysis> multiDimensionAnalysisList = iDataSourceService
				.findMultiDimensionAnalysisList();
		jsonResponse.addProperty("draw", draw);
		jsonResponse.addProperty("recordsTotal",
				((Page<MultiDimensionAnalysis>) multiDimensionAnalysisList)
						.getTotal());
		jsonResponse.addProperty("recordsFiltered",
				((Page<MultiDimensionAnalysis>) multiDimensionAnalysisList)
						.getTotal());
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm")
				.create();
		jsonResponse.add("data", gson.toJsonTree(multiDimensionAnalysisList));
		return jsonResponse.toString();
	}
}
