<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>统计图表管理</title>
<head>
</head>
<body>
	<jsp:include page="/WEB-INF/views/templates/decorator.jsp" />

	<div class="container" style="height: 1000px;">
		<iframe src="http://192.168.0.68:8088/" frameborder="0" height="100%"
			width="100%" scrolling="no"></iframe>
	</div>
</body>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/staticalChart.js"></script>
</html>
