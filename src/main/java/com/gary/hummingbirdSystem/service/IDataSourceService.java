package com.gary.hummingbirdSystem.service;

import java.util.List;

import com.gary.hummingbirdSystem.model.DataModel;
import com.gary.hummingbirdSystem.model.DataSource;
import com.gary.hummingbirdSystem.model.MultiDimensionAnalysis;

/**
 * 数据源管理接口
 * 
 * @author Gary
 * 
 * @date 2017年5月11日
 */
public interface IDataSourceService {

	List<DataSource> findDataSourceList();

	List<DataModel> findDataModelList();

	List<MultiDimensionAnalysis> findMultiDimensionAnalysisList();

}
