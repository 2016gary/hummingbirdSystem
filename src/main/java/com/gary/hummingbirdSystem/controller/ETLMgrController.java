package com.gary.hummingbirdSystem.controller;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.pentaho.di.core.KettleEnvironment;
import org.pentaho.di.core.exception.KettleException;
import org.pentaho.di.trans.Trans;
import org.pentaho.di.trans.TransMeta;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gary.hummingbirdSystem.util.KettleUtil;

/**
 * ETL管理页面
 * 
 * @author Gary
 * 
 * @date 2017年5月27日
 */
@Controller
@RequestMapping("/ETLMgr")
public class ETLMgrController {
	/**
	 * 生成Kettle Trans
	 * 
	 * @param
	 * @return Boolean
	 */
	@RequestMapping("/createTrans")
	@ResponseBody
	public Boolean createTrans() {
		try {
			KettleEnvironment.init();
			TransMeta transMeta = KettleUtil.generateMyOwnTrans();
			String transXml = transMeta.getXML();
			String transName = "etl/update_insert_Trans.ktr";
			File file = new File(transName);
			FileUtils.writeStringToFile(file, transXml, "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	/**
	 * 开始Kettle Trans
	 * 
	 * @param
	 * @return Boolean
	 */
	@RequestMapping("/startTrans")
	@ResponseBody
	public Boolean startTrans() {
		try {
			// 初始化ketlle
			KettleEnvironment.init();
			// 创建转换元数据对象
			TransMeta meta;
			meta = new TransMeta("etl/update_insert_Trans.ktr");
			Trans trans = new Trans(meta);
			trans.prepareExecution(null);
			trans.startThreads();
			trans.waitUntilFinished();
			if (trans.getErrors() != 0) {
				System.out.println("执行失败！");
				return false;
			}
		} catch (KettleException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
