<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>数据源管理</title>
<head>
<link
	href="${pageContext.request.contextPath}/resources/styles/dataSourceMgr/dataSourceList.css"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/decorator.jsp" />

	<jsp:include
		page="/WEB-INF/views/dataSourceMgr/modal/dataSourceModal.jsp" />

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
