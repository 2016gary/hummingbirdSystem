<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>统计图表管理</title>
<head>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/decorator.jsp" />

	<div class="container">
		<div class="jumbotron">
			<div>
				<label>显示</label><select>
					<option>project1</option>
					<option>project2</option>
					<option>project3</option>
				</select><label>统计结果</label>
			</div>
			<div style="width: 100%; text-align: center;">
				<img
					src="${pageContext.request.contextPath}/resources/images/loading.gif"
					style="width: 50px; margin: 0 auto;" />
			</div>
		</div>
	</div>
</body>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/staticalChart.js"></script>
</html>
