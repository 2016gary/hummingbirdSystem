package com.gary.hummingbirdSystem.model;

/**
 * 连接详细信息实体类
 * 
 * @author Gary
 * 
 * @date 2017年5月11日
 */
public class ConnectDetail {
	private int id;
	private String hostname;// 主机名
	private int port;// 端口号
	private String username;// 用户名
	private String password;// 密码

	public ConnectDetail() {
		super();
	}

	public String getHostname() {
		return hostname;
	}

	public void setHostname(String hostname) {
		this.hostname = hostname;
	}

	public int getPort() {
		return port;
	}

	public void setPort(int port) {
		this.port = port;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
