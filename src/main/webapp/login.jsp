<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>蜂鸟数据分析平台</title>
<head>
<link rel="stylesheet" type="text/css"
	href="resources/bootstrap/css/bootstrap.min.css" />
<link href="resources/styles/navbar.css" rel="stylesheet">
<link href="resources/styles/login.css" rel="stylesheet">
<script src="resources/jquery/js/jquery.min.js" type="text/javascript"></script>
</head>
<body>
	<div style="padding-top: 30px">
		<div class="login-wrap">
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
					for="tab-1" class="tab">登录</label> <input id="tab-2" type="radio"
					name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
				<div class="login-form">
					<div class="sign-in-htm">
						<div class="group">
							<label for="user" class="label">用户名</label> <input id="user"
								type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label> <input id="pass"
								type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span>保持登录</label>
						</div>
						<div class="group">
							<input type="submit" class="button" value="登录">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">忘记密码?</a>
						</div>
					</div>
					<div class="sign-up-htm">
						<div class="group">
							<label for="user" class="label">用户名</label> <input id="user"
								type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label> <input id="pass"
								type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="pass" class="label">确认密码</label> <input id="pass"
								type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="pass" class="label">邮箱</label> <input id="pass"
								type="text" class="input">
						</div>
						<div class="group">
							<input type="submit" class="button" value="注册">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<label for="tab-1">已经注册?</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
