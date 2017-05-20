package com.gary.hummingbirdSystem.model;

/**
 * 事实表关联关系实体类
 * 
 * @author Gary
 * 
 * @date 2017年5月15日
 */
public class FactTableRelation {
	private int id;
	private int multiDimensionAnalysisId;// 多维数据分析id
	private String factTable1Name;// 事实表1名称
	private String factTable2Name;// 事实表2名称
	private String connectType;// 连接类型
	private String associationCondition;// 关联条件

	public FactTableRelation() {
		super();
	}

	public FactTableRelation(int id, int multiDimensionAnalysisId,
			String factTable1Name, String factTable2Name, String connectType,
			String associationCondition) {
		super();
		this.id = id;
		this.multiDimensionAnalysisId = multiDimensionAnalysisId;
		this.factTable1Name = factTable1Name;
		this.factTable2Name = factTable2Name;
		this.connectType = connectType;
		this.associationCondition = associationCondition;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMultiDimensionAnalysisId() {
		return multiDimensionAnalysisId;
	}

	public void setMultiDimensionAnalysisId(int multiDimensionAnalysisId) {
		this.multiDimensionAnalysisId = multiDimensionAnalysisId;
	}

	public String getFactTable1Name() {
		return factTable1Name;
	}

	public void setFactTable1Name(String factTable1Name) {
		this.factTable1Name = factTable1Name;
	}

	public String getFactTable2Name() {
		return factTable2Name;
	}

	public void setFactTable2Name(String factTable2Name) {
		this.factTable2Name = factTable2Name;
	}

	public String getConnectType() {
		return connectType;
	}

	public void setConnectType(String connectType) {
		this.connectType = connectType;
	}

	public String getAssociationCondition() {
		return associationCondition;
	}

	public void setAssociationCondition(String associationCondition) {
		this.associationCondition = associationCondition;
	}

}
