<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>数据源管理</title>
<head>
<style type="text/css">
fieldset {
	padding-top: 10px !important;
	border: 1px solid silver !important;
	padding-left: 30px !important;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/decorator.jsp" />

	<!-- 编辑数据源弹出框(开始) -->
	<div class="modal fade" data-backdrop="static" id="dataSource_modal"
		tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width: 600px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="dataSource_modal_title">新增数据源</h4>
				</div>
				<div class="modal-body" style="width: 598px;">
					<div class="form-group row">
						<span
							style="width: 100px; display: inline-block; vertical-align: middle; margin-left: 110px;">数据源名称：</span>
						<div
							style="width: 360px; display: inline-block; vertical-align: middle;">
							<input type="text" class="form-control" id="" placeholder="数据源名称">
						</div>
					</div>
					<div class="form-group row">
						<span
							style="width: 100px; display: inline-block; vertical-align: middle; margin-left: 110px;">连接类型：</span>
						<div
							style="width: 360px; display: inline-block; vertical-align: middle;">
							<select class="form-control" id="">
								<option value="0">请选择</option>
								<option value="">MS SqlServer</option>
								<option value="">Oracle</option>
								<option value="">Sybase</option>
								<option value="">MySql</option>
								<option value="">PostgreSql</option>
								<option value="">SQLite</option>
								<option value="">Hadoop Hive2</option>
								<option value="">AS/400</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span
							style="width: 100px; display: inline-block; vertical-align: middle; margin-left: 110px;">连接方式：</span>
						<div
							style="width: 360px; display: inline-block; vertical-align: middle;">
							<select class="form-control" id="">
								<option value="0">请选择</option>
								<option value="">Native(JDBC)</option>
								<option value="">ODBC</option>
								<option value="">JNDI</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span
							style="width: 100px; display: inline-block; vertical-align: top; margin-left: 110px;">连接详细：</span>
						<div
							style="width: 360px; display: inline-block; vertical-align: middle;">
							<fieldset>
								<div class="form-group row">
									<span style="display: inline-block; vertical-align: middle;">主机名称：</span>
									<div
										style="display: inline-block; vertical-align: middle; margin-left: 14px;">
										<input type="text" class="form-control" id=""
											placeholder="主机名称">
									</div>
								</div>
								<div class="form-group row">
									<span style="display: inline-block; vertical-align: middle;">数据库名称：</span>
									<div style="display: inline-block; vertical-align: middle;">
										<input type="text" class="form-control" id=""
											placeholder="数据库名称">
									</div>
								</div>
								<div class="form-group row">
									<span style="display: inline-block; vertical-align: middle;">端口号：</span>
									<div
										style="display: inline-block; vertical-align: middle; margin-left: 28px;">
										<input type="text" class="form-control" id=""
											placeholder="端口号">
									</div>
								</div>
								<div class="form-group row">
									<span style="display: inline-block; vertical-align: middle;">用户名：</span>
									<div
										style="display: inline-block; vertical-align: middle; margin-left: 28px">
										<input type="text" class="form-control" id=""
											placeholder="用户名">
									</div>
								</div>
								<div class="form-group row">
									<span style="display: inline-block; vertical-align: middle;">密码：</span>
									<div
										style="display: inline-block; vertical-align: middle; margin-left: 42px">
										<input type="text" class="form-control" id="" placeholder="密码">
									</div>
								</div>
							</fieldset>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-success">连接测试</button>
					<button type="button" class="btn btn-primary" id="" onclick="">保存</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 编辑数据源弹出框(结束) -->

	<div class="container">
		<div class="jumbotron">
			<button class="btn btn-primary pull-right" onclick="showModal()">新增数据源</button>
			<table id="dataSource_tbl" class="display">
				<thead>
					<tr>
						<th>序号</th>
						<th>数据源名称</th>
						<th>连接类型</th>
						<th>连接方式</th>
						<th>创建时间</th>
						<th>操作</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/dataSourceList.js"></script>
</html>
