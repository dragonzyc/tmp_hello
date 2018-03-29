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

<link rel="stylesheet" href="${oss_url}/static/front/css/dowload/index.css" type="text/css"></link>
<style type="text/css">
.header {
	position: relative;
}
</style>
</head>
<body class="gray-bg">
	<div class="container-full header dowload">
		<div class="container-full header-nav">
			<div class="container padding-clear">
				<div class="navbar" role="navigation">
					<div class="navbar-header navbar-default">
						<button type="button " class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
							<span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="">
							<img alt="${requestScope.constant['webName']}" src="${requestScope.constant['logoImage'] }">
						</a>
					</div>
					<div class="collapse navbar-collapse navbar-right" id="example-navbar-collapse">
						<ul class="nav navbar-nav ">
								<li class="">
									<a href="/">首页
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>		
								
								<li class="">
									<a href="javascript:void(0);" scribe_scanned="true">交易中心<b class="caret"></b><div class="relative">
									<span class="line"></span>	</div></a>
								<ul class="drop" style="margin-top: 10px;">
									<div style="padding-top: 9px;">
									<i></i>
								<c:forEach items="${requestScope.constant['fbs']}" var="v">	
									<li>
								  		<a href="/trade/type.html?type=${v.fid }"scribe_scanned="true">
								    		<span>${v.fname }交易区</span>
								        </a>
									</li>
								</c:forEach>
									</div>
								</ul>
								</li>
								
								<li class="">
									<a href="/financial/index.html">财务中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
								<li class="">
									<a href="/market.html">行情中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
								<li class="">
									<a href="/crowd/index.html">申购中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
								<li class="">
									<a href="/shop/index.html">商城中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
								<li class="">
									<a href="/user/security.html">个人中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
							</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="container-full ">
			<div class="container ">
				<div class="dcenter">
					<div class="dcenter-left">
						<img src="https://websec.oss-cn-shenzhen.aliyuncs.com/AAA%E5%9B%BE/image.jpeg"><!--${oss_url}/static/front/images/dowload/qcode.png-->
					</div>
					<div class="dcenter-right">
						<a target="_blank" href="${requestScope.constant['android_downurl'] }">Android版下载</a>
						<a class="cen" target="_blank" href="${requestScope.constant['ios_downurl'] }">iPhone版下载</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-full download-bottom"></div>
</body>
</html>