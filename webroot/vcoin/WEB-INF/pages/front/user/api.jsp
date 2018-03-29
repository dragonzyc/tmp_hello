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

<style type="text/css">
.api-tips{
	padding: 30px 15px;
	font-size: 14px;
}
.api-info{
	padding: 0 15px 15px;
	font-size: 14px;
}
.api-btn{
	display: inline-block;
	width: 50%;
	margin-top: 30px;
	margin-bottom: 30px;
}
</style>
</head>
<body>

 


<%@include file="../comm/header.jsp" %>

	<div class="container-full padding-top-40">
		<div class="container displayFlex">
			
<%@include file="../comm/left_menu.jsp" %>

			<div class="col-xs-10 padding-right-clear">
				<div class="col-xs-12 padding-right-clear padding-left-clear rightarea">
					<div class="col-xs-12 rightarea-con">
						<div class="panel panel-tips">
							<div class="panel-header text-center text-danger">
								<span class="panel-title">重要提示</span>
							</div>
							<div class="panel-body">
								<p>&lt 每个用户每个应用最多只能创建1个密钥对。</p>
								<p>&lt 私有密钥允许您通过${requestScope.constant['webName']}开放协议提供API访问您的账户并执行交易指令，我们为您提供的密钥非常重要，请妥善保管。</p>
							</div>
						</div>
						<div class="col-xs-12 form-horizontal" style="background: #f9f9f9; padding-top: 30px; padding-bottom: 10px;">

								<div class="form-group ">
									<label for="tradePwd" class="col-xs-3 control-label">交易密码</label>
									<div class="col-xs-6">
										<input id="tradePwd" class="form-control" type="password" autocomplete="off">
									</div>
								</div>
								<div class="form-group ">
									<label for="api" class="col-xs-3 control-label">API权限</label>
									<div class="col-xs-6">
											<select class="form-control" name="type" id="type">
											<c:forEach items="${apinames }" var="v">
												<option value="${v.fid }">${v.fname }</option>
											</c:forEach>	
											</select>
									</div>
								</div>
							<c:if test="${isBindTelephone == true }">		
									<div class="form-group">
										<label for="apiPhoneCode" class="col-xs-3 control-label">短信验证码</label>
										<div class="col-xs-6">
											<input id="apiPhoneCode" class="form-control" type="text" autocomplete="off">
											<button id="apisendmessage" data-msgtype="15" data-tipsid="apierrortips" class="btn btn-sendmsg">发送验证码</button>
										</div>
									</div>
							</c:if>		
								
							<c:if test="${isBindGoogle ==true}">	
									<div class="form-group">
										<label for="apiTotpCode" class="col-xs-3 control-label">谷歌验证码</label>
										<div class="col-xs-6">
											<input id="apiTotpCode" class="form-control" type="text" autocomplete="off">
										</div>
									</div>
							</c:if>		
							
							<div class="form-group">
								<label for="errorTips" class="col-xs-2 control-label"></label>
								<div class="col-xs-5">
									<span id="errorTips" class="text-danger"> </span>
								</div>
							</div>
							<div class="form-group">
								<label for="apiButton" class="col-xs-2 control-label"></label>
								<div class="col-xs-5">
									<button id="apiButton" class="btn btn-danger btn-xs-6">创建</button>
								</div>
							</div>
						</div>
						<div class="col-xs-12 padding-clear padding-top-30">
							<div class="panel border">
								<div class="panel-heading">
									<span class="text-danger">我的密匙</span>
								</div>
								<div class="panel-body" id="recordbody0">
									<table class="table">
										<tr>
											<td class="col-xs-3">创建日期</td>
											<td class="col-xs-4">API 访问密钥(Access Key)</td>
											<td class="col-xs-2">应用名称</td>
											<td class="col-xs-1">操作</td>
										</tr>
										
										<c:forEach items="${list }" var="v">
										    <tr>
												<td>${v.fcreatetime }</td>
												<td>${v.fpartner }</td>
												<td>${v.label}</td>
												<td><a class="delete-api" style="cursor: pointer;" data-fid="${v.fid }">删除</a></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal modal-custom fade" id="apiModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-mark"></div>
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close btn-modal" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<span class="modal-title" id="exampleModalLabel">创建成功</span>
				</div>
				<div class="modal-body">
					<div class="api-tips text-danger">您已经申请了API密钥对，请不要把您的密钥透露给任何人。秘密密钥 （Secret Key）仅在申请时显示，遗失后不可找回，请务必注意保存。 如您忘记了秘密密钥，请回收该密钥对并申请新的密钥对。</div>
					<div class="api-info">
						<span>访问密钥(Access Key) : </span> <span id="accessKey"></span>
					</div>
					<div class="api-info">
						<span>访问密钥(Secret Key) : </span> <span id="secretKey"></span>
					</div>
					<div class="api-info text-center">
						<button id="modalBtn" class="btn btn-danger api-btn">确定</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	




<%@include file="../comm/footer.jsp" %>	


	<script type="text/javascript" src="${oss_url}/static/front/js/comm/msg.js"></script>
	<script type="text/javascript" src="${oss_url}/static/front/js/api/api.js"></script>
</body>
</html>