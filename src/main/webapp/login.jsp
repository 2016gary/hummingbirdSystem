<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>蜂鸟数据分析平台</title>
<head>
<link href="resources/styles/login.css" rel="stylesheet">
<script src="resources/jquery/js/jquery.min.js" type="text/javascript"></script>
</head>
<body>
	<div id="login_div">
		<h1>蜂鸟数据分析平台</h1>
		<form action="${pageContext.request.contextPath}/login" method="post">
			<input type="text" required="required" placeholder="用户名"
				name="username"></input> <input type="password" required="required"
				placeholder="密码" name="password"></input>
			<button class="btn_submit" type="submit">登录</button>
		</form>
	</div>
</body>
</html>
