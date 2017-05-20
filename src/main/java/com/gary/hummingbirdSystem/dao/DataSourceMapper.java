package com.gary.hummingbirdSystem.dao;

import java.util.List;

import com.gary.hummingbirdSystem.model.ConnectDetail;
import com.gary.hummingbirdSystem.model.ConnectMode;
import com.gary.hummingbirdSystem.model.ConnectType;
import com.gary.hummingbirdSystem.model.DataModel;
import com.gary.hummingbirdSystem.model.DataSource;
import com.gary.hummingbirdSystem.model.MultiDimensionAnalysis;

public interface DataSourceMapper extends BaseDao<DataSource> {

	List<DataSource> findDataSourceList();

	ConnectType getConnectTypeById(int id);

	ConnectMode getConnectModeById(int id);

	ConnectDetail getConnectDetailById(int id);

	DataModel getDataModelById(int id);

	List<DataModel> findDataModelList();

	List<MultiDimensionAnalysis> findMultiDimensionAnalysisList();
}
