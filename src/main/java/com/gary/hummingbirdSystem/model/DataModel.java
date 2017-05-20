package com.gary.hummingbirdSystem.model;

/**
 * 数据模型实体类
 * 
 * @author Gary
 * 
 * @date 2017年5月15日
 */
public class DataModel {
	private int id;
	private String name;// 数据模型名称
	private int dataSourceId;// 数据源id
	private String dataSourceTables;// 所选择的数据源中事实表
	private String description;// 数据模型描述

	private DataSource dataSource;

	public DataModel() {
		super();
	}

	public DataModel(int id, String name, int dataSourceId,
			String dataSourceTables, String description) {
		super();
		this.id = id;
		this.name = name;
		this.dataSourceId = dataSourceId;
		this.dataSourceTables = dataSourceTables;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDataSourceId() {
		return dataSourceId;
	}

	public void setDataSourceId(int dataSourceId) {
		this.dataSourceId = dataSourceId;
	}

	public String getDataSourceTables() {
		return dataSourceTables;
	}

	public void setDataSourceTables(String dataSourceTables) {
		this.dataSourceTables = dataSourceTables;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

}
