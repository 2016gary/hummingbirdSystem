<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>维度分析弹出框</title>
<head>
</head>
<body>
	<!-- 编辑维度分析弹出框(开始) -->
	<div class="modal fade" data-backdrop="static" id="dimension_modal"
		tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="dimension_modal_title">新增维度分析</h4>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<span class="span_modal">数据模型：</span>
						<div class="div_modal">
							<select class="form-control" id="">
								<option value="0">请选择</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal">关联关系：</span>
					</div>
					<div class="form-group row">
						<div
							style="width: 462px; display: inline-block; vertical-align: middle; margin-left: 110px;">
							<table id="factTableRelation_tbl" border="1"
								style="width: 462px;">
								<thead>
									<tr>
										<td>序号</td>
										<td>表1</td>
										<td>表2</td>
										<td>连接类型</td>
										<td>关联条件</td>
										<td>操作</td>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
							<button type="button" class="btn btn-default btn-sm"
								id="showTableRelation_btn">
								<span class="glyphicon glyphicon-plus"></span>
							</button>
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
	<!-- 编辑维度分析弹出框(结束) -->
</body>
</html>
