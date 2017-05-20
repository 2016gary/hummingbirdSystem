<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>数据模型管理</title>
<head>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/decorator.jsp" />

	<div class="container">
		<div class="jumbotron">
			<table id="dataModel_tbl" class="display">
				<thead>
					<tr>
						<th>序号</th>
						<th>数据模型名称</th>
						<th>数据源名称</th>
						<th>事实表</th>
						<th>描述</th>
						<th>操作</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/dataModelList.js"></script>
</html>
