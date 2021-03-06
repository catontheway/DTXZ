<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录界面</title>
	<!-- 图标 -->
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/login.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/checkform.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/login.js"></script>

</head>
<body>

	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>

	
	<!-- 登录注册集成框 -->
	<div class="contain-box dute-box">
		<div class="box-header">
			<div class="login-header left  sel-header">
				<i class="left user-icon"></i>
				<span>登录</span>
			</div>
			<div class="register-header left">
				<i class="left register-icon"></i>
				<span>注册</span>
			</div>
		</div>
		<div class="box-content">
			<!-- 登录框 -->
			<div class="login-box">
				<!-- 登录表单 -->
				<form action="${pageContext.request.contextPath }/login.do" method="post" onsubmit="return checkLogin();">
					<div class="form-line right">
						<label for="login-mail">邮箱</label>
						<input id="login-mail" type="text" name="email" placeholder="请输入邮箱">
						<!-- 提示错误信息 -->
						<span class="mail-info info"></span>
					</div>
					<div class="form-line right">
						<label for="login-pwd">密码</label>
						<input id="login-pwd" type="password" name="pwd" placeholder="请输入密码">
						<span class="pwd-info info"></span>
					</div>
					<div class="form-line rem-box right">
						<input id="remember-pwd" type="checkbox" name="remPwd">
						<label class="icon-remember left" for="remember-pwd"></label>
						<label class="left" for="remember-pwd">记住密码</label>
						<a class="right" href="">忘记密码？</a>
					</div>
					<div class="form-line right sub-box">
						<input type="submit" value="登录" >
					</div>
				</form>
			</div>

			<!-- 注册框 -->
			<div class="register-box">
				<!-- 注册表单 -->
				<form action="${pageContext.request.contextPath }/register.do" method="post" onsubmit="return checkRegister();">
					<div class="form-line right">
						<label for="register-name">用户名</label>
						<input id="register-name" type="text" name="nickname" placeholder="请输入昵称">
						<!-- 提示错误信息 -->
						<span class="name-info info"></span>
					</div>
					
					<div class="form-line right">
						<label for="register-mail">邮箱</label>
						<input id="register-mail" type="text" name="email" placeholder="请输入邮箱">
						<!-- 提示错误信息 -->
						<span class="mail-info info"></span>
					</div>
					
					<div class="form-line right">
						<label for="register-pwd">密码</label>
						<input id="register-pwd" type="password" name="pwd" placeholder="请输入密码">
						<span class="pwd-info info"></span>
					</div>

					<div class="form-line right">
						<label for="register-again-pwd">重输密码</label>
						<input id="register-again-pwd" type="password" name="againPassword" placeholder="请重复输入密码">
						<span class="again-pwd-info info"></span>
					</div>

					<input type="submit" value="注册">
				</form>
			</div>
		</div>
	</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>