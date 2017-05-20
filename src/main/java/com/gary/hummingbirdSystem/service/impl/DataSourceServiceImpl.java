package com.gary.hummingbirdSystem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gary.hummingbirdSystem.dao.DataSourceMapper;
import com.gary.hummingbirdSystem.model.DataModel;
import com.gary.hummingbirdSystem.model.DataSource;
import com.gary.hummingbirdSystem.model.MultiDimensionAnalysis;
import com.gary.hummingbirdSystem.service.IDataSourceService;

/**
 * 实现数据源管理接口
 * 
 * @author Gary
 * 
 * @date 2017年5月11日
 */
@Service("IDataSourceService")
public class DataSourceServiceImpl implements IDataSourceService {

	@Autowired
	private DataSourceMapper dataSourceMapper;

	@Override
	public List<DataSource> findDataSourceList() {
		List<DataSource> dataSourceList = dataSourceMapper.findDataSourceList();
		for (DataSource dataSource : dataSourceList) {
			int connectTypeId = dataSource.getConnectTypeId();
			dataSource.setConnectType(dataSourceMapper
					.getConnectTypeById(connectTypeId));
			int connectModeId = dataSource.getConnectModeId();
			dataSource.setConnectMode(dataSourceMapper
					.getConnectModeById(connectModeId));
			int connectDetailId = dataSource.getConnectDetailId();
			dataSource.setConnectDetail(dataSourceMapper
					.getConnectDetailById(connectDetailId));
		}
		return dataSourceList;
	}

	@Override
	public List<DataModel> findDataModelList() {
		List<DataModel> dataModelList = dataSourceMapper.findDataModelList();
		for (DataModel dataModel : dataModelList) {
			int dataSourceId = dataModel.getDataSourceId();
			dataModel.setDataSource(dataSourceMapper.get(dataSourceId));
		}
		return dataModelList;
	}

	@Override
	public List<MultiDimensionAnalysis> findMultiDimensionAnalysisList() {
		List<MultiDimensionAnalysis> multiDimensionAnalysisList = dataSourceMapper
				.findMultiDimensionAnalysisList();
		for (MultiDimensionAnalysis multiDimensionAnalysis : multiDimensionAnalysisList) {
			int dataModelId = multiDimensionAnalysis.getDataModelId();
			multiDimensionAnalysis.setDataModel(dataSourceMapper
					.getDataModelById(dataModelId));
		}
		return multiDimensionAnalysisList;
	}
}
