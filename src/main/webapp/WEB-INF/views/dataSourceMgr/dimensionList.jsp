<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>维度分析管理</title>
<head>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/decorator.jsp" />

	<!-- 编辑维度分析弹出框(开始) -->
	<div class="modal fade" data-backdrop="static" id="dimension_modal"
		tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width: 600px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="dimension_modal_title">新增维度分析</h4>
				</div>
				<div class="modal-body" style="width: 598px;">
					<div class="form-group row">
						<span
							style="width: 100px; display: inline-block; vertical-align: middle; margin-left: 110px;">数据模型：</span>
						<div
							style="width: 360px; display: inline-block; vertical-align: middle;">
							<select class="form-control" id="">
								<option value="0">请选择</option>
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
	<!-- 编辑维度分析弹出框(结束) -->

	<div class="container">
		<div class="jumbotron">
			<button class="btn btn-primary pull-right" onclick="showModal()">新增维度分析</button>
			<table id="MultiDimensionAnalysis_tbl" class="display">
				<thead>
					<tr>
						<th>序号</th>
						<th>数据模型名称</th>
						<th>维度字段</th>
						<th>指标字段</th>
						<th>操作</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/dimensionList.js"></script>
</html>
