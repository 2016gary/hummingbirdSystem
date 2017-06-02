<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>数据源弹出框</title>
<head>
</head>
<body>
	<!-- 编辑数据源弹出框(开始) -->
	<div class="modal fade" data-backdrop="static" id="dataSource_modal"
		tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="dataSource_modal_title">新增数据源</h4>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<span class="span_modal">数据源名称：</span>
						<div class="div_modal">
							<input type="text" class="form-control" id="" placeholder="数据源名称">
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal">连接类型：</span>
						<div class="div_modal">
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
						<span class="span_modal">连接方式：</span>
						<div class="div_modal">
							<select class="form-control" id="">
								<option value="0">请选择</option>
								<option value="">Native(JDBC)</option>
								<option value="">ODBC</option>
								<option value="">JNDI</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal" style="vertical-align: top !important;">连接详细：</span>
						<div class="div_modal">
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
</body>
</html>
