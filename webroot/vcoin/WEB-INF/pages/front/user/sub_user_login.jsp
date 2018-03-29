<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/include.inc.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>

<!doctype html>
<html>
<head> 
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@include file="../comm/link.inc.jsp" %>
<link rel="stylesheet" href="${oss_url}/static/front/css/user/login.css" type="text/css"></link>
</head>
<body >


<%@include file="../comm/header.jsp" %>


	<div class="container-full login-body-full">
		<div class="container ">
			
				<div class="col-xs-4 login padding-left-clear padding-right-clear">
				
				
				<div class="login-body">
					<div class="form-group login-header">
						<span>登录${requestScope.constant['webName']}</span>
					</div>
					<div class="form-group ">
						<label class="ipt-icon acc" for="login-account"></label>
						<input id="login-account" class="form-control login-ipt" placeholder="输入邮件或手机" type="text">
					</div>
					<div class="form-group ">
						<label class="ipt-icon pas" for="login-password"></label>
						<input id="login-password" class="form-control login-ipt" placeholder="输入密码" type="password">
					</div>
					<div class="form-group ">
							<span id="login-errortips" class="text-danger"></span>
						</div>
					<div class="form-group ">
						<button id="login-submit" class="btn btn-danger btn-block btn-login">立即登录</button>
					</div>
					<!-- <div class="form-group login-other">
						<span> <a class="qq" href="/link/qq/call.html">QQ登录</a><i class="split"></i>
						</span><span><a class="weixin" href="javascript:weixin();">微信登录</a> <i class="split"></i></span><span><a href="user/register.html">注册帐号&gt;&gt;</a></span>
					</div>
					<div class="form-group login-reset">
						<a href="/validate/reset.html">忘记密码？</a>
					</div> -->
					<div class="form-group login-reset">
						<a href="/validate/reset.html">忘记密码？</a>
						<a class="pull-right" href="/user/register.html">注册&gt;&gt;</a>
					</div>
				</div>
				</div>
		</div>
	</div>
	<input id="forwardUrl" type="hidden" value="${forwardUrl }">


<%@include file="../comm/footer.jsp" %>	

	<script type="text/javascript" src="${oss_url}/static/front/js/user/login.js"></script>
</body>
</html>
