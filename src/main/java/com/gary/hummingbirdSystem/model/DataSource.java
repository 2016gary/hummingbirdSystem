package com.gary.hummingbirdSystem.model;

import java.util.Date;

/**
 * 数据源实体类
 * 
 * @author Gary
 * 
 * @date 2017年5月11日
 */
public class DataSource {

	private int id;
	private String name;// 数据源名称
	private int connectTypeId;// 连接类型ID
	private int connectModeId;// 连接方式ID
	private int connectDetailId;// 连接详细信息ID
	private Date createTime;// 创建时间 默认记录当前时间

	private ConnectType connectType;
	private ConnectMode connectMode;
	private ConnectDetail connectDetail;

	public DataSource() {
		super();
	}

	public DataSource(int id, String name, int connectTypeId,
			int connectModeId, int connectDetailId, Date createTime) {
		super();
		this.id = id;
		this.name = name;
		this.connectTypeId = connectTypeId;
		this.connectModeId = connectModeId;
		this.connectDetailId = connectDetailId;
		this.createTime = createTime;
	}

	public int getConnectTypeId() {
		return connectTypeId;
	}

	public void setConnectTypeId(int connectTypeId) {
		this.connectTypeId = connectTypeId;
	}

	public int getConnectModeId() {
		return connectModeId;
	}

	public void setConnectModeId(int connectModeId) {
		this.connectModeId = connectModeId;
	}

	public int getConnectDetailId() {
		return connectDetailId;
	}

	public void setConnectDetailId(int connectDetailId) {
		this.connectDetailId = connectDetailId;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = new Date();
	}

	public ConnectType getConnectType() {
		return connectType;
	}

	public void setConnectType(ConnectType connectType) {
		this.connectType = connectType;
	}

	public ConnectMode getConnectMode() {
		return connectMode;
	}

	public void setConnectMode(ConnectMode connectMode) {
		this.connectMode = connectMode;
	}

	public ConnectDetail getConnectDetail() {
		return connectDetail;
	}

	public void setConnectDetail(ConnectDetail connectDetail) {
		this.connectDetail = connectDetail;
	}

}
