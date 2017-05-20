package com.gary.hummingbirdSystem.model;

import java.util.List;

/**
 * 多维数据分析实体类
 * 
 * @author Gary
 * 
 * @date 2017年5月15日
 */
public class MultiDimensionAnalysis {
	private int id;
	private int dataModelId;// 数据模型id
	private List<FactTableRelation> factTableRelationList;// 事实表关联关系id
	private String dimensionColumnNames;// 维度字段名称
	private String quotaColumnNames;// 指标字段名称

	private DataModel dataModel;

	public MultiDimensionAnalysis() {
		super();
	}

	public MultiDimensionAnalysis(int id, int dataModelId,
			List<FactTableRelation> factTableRelationList,
			String dimensionColumnNames, String quotaColumnNames) {
		super();
		this.id = id;
		this.dataModelId = dataModelId;
		this.factTableRelationList = factTableRelationList;
		this.dimensionColumnNames = dimensionColumnNames;
		this.quotaColumnNames = quotaColumnNames;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDataModelId() {
		return dataModelId;
	}

	public void setDataModelId(int dataModelId) {
		this.dataModelId = dataModelId;
	}

	public List<FactTableRelation> getFactTableRelationList() {
		return factTableRelationList;
	}

	public void setFactTableRelationList(
			List<FactTableRelation> factTableRelationList) {
		this.factTableRelationList = factTableRelationList;
	}

	public String getDimensionColumnNames() {
		return dimensionColumnNames;
	}

	public void setDimensionColumnNames(String dimensionColumnNames) {
		this.dimensionColumnNames = dimensionColumnNames;
	}

	public String getQuotaColumnNames() {
		return quotaColumnNames;
	}

	public void setQuotaColumnNames(String quotaColumnNames) {
		this.quotaColumnNames = quotaColumnNames;
	}

	public DataModel getDataModel() {
		return dataModel;
	}

	public void setDataModel(DataModel dataModel) {
		this.dataModel = dataModel;
	}

}
