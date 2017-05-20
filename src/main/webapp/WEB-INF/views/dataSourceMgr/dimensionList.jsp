<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>维度指标管理</title>
<head>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/decorator.jsp" />

	<div class="container">
		<div class="jumbotron">
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
