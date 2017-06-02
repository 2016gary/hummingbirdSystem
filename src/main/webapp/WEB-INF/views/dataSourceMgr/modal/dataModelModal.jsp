<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>数据模型弹出框</title>
<head>
</head>
<body>
	<!-- 编辑数据模型弹出框(开始) -->
	<div class="modal fade" data-backdrop="static" id="dataModel_modal"
		tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="dataModel_modal_title">新增数据模型</h4>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<span class="span_modal">数据模型名称：</span>
						<div class="div_modal">
							<input type="text" class="form-control" id=""
								placeholder="数据模型名称">
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal">数据源：</span>
						<div class="div_modal">
							<select class="form-control" id="">
								<option value="0">请选择</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal">描述：</span>
						<div class="div_modal">
							<input type="text" class="form-control" id="" placeholder="描述">
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal" style="vertical-align: top !important;">选择事实表：</span>
						<div class="div_modal">
							<select multiple
								style="width: 150px; height: 200px; display: inline-block;">
								<option value="ORG">ORG</option>
								<option value="RSALE">RSALE</option>
								<option value="PRODCATY">PRODCATY</option>
							</select>
							<div
								style="width: 50px; display: inline-block; padding-left: 10px;">
								<button type="button">
									<span class="glyphicon glyphicon-chevron-right"
										style="color: #333333"></span>
								</button>
								<button type="button">
									<span class="glyphicon glyphicon-chevron-left"
										style="color: #333333"></span>
								</button>
							</div>
							<select multiple
								style="width: 150px; height: 200px; display: inline-block;">
							</select>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="" onclick="">保存</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 编辑数据模型弹出框(结束) -->

</body>
</html>
