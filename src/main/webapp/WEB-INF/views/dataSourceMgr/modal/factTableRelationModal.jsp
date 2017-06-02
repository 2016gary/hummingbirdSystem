<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>事实表关联关系弹出框</title>
<head>
</head>
<body>
	<!-- 事实表关联关系弹出框(开始) -->
	<div class="modal fade" data-backdrop="static"
		id="factTableRelation_modal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="dimension_modal_title">新增表关联关系</h4>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<span class="span_modal">事实表1：</span>
						<div class="div_modal">
							<select class="form-control" id="factTable1">
								<option value="0">请选择</option>
								<option value="ORG">ORG</option>
								<option value="RSALE">RSALE</option>
								<option value="PRODCATY">PRODCATY</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal">事实表2：</span>
						<div class="div_modal">
							<select class="form-control" id="factTable2">
								<option value="0">请选择</option>
								<option value="ORG">ORG</option>
								<option value="RSALE">RSALE</option>
								<option value="PRODCATY">PRODCATY</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal">连接类型：</span>
						<div class="div_modal">
							<select class="form-control" id="connectType">
								<option value="0">请选择</option>
								<option value="INNER JOIN">INNER JOIN</option>
								<option value="LEFT JOIN">LEFT JOIN</option>
								<option value="RIGHT JOIN">RIGHT JOIN</option>
								<option value="FULL JOIN">FULL JOIN</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal">表1关联字段：</span>
						<div class="div_modal">
							<select class="form-control" id="joinColumn_tbl1">
								<option value="0">请选择</option>
								<option value="PCCODE">PCCODE</option>
								<option value="ORGID">ORGID</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<span class="span_modal">表2关联字段：</span>
						<div class="div_modal">
							<select class="form-control" id="joinColumn_tbl2">
								<option value="0">请选择</option>
								<option value="PCCODE">PCCODE</option>
								<option value="ORGID">ORGID</option>
							</select>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary"
						onclick="addFactTableRelation()">保存</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 事实表关联关系弹出框(结束) -->
</body>
</html>
