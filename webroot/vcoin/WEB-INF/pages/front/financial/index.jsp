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

<link rel="stylesheet" href="${oss_url}/static/front/css/finance/index.css" type="text/css"></link>
</head>
<body>

 <%@include file="../comm/header.jsp" %>

	<div class="container-full padding-top-30">
		<div class="container displayFlex">
			
<%@include file="../comm/left_menu.jsp" %>

			<div class="col-xs-10 padding-right-clear">
				<div class="col-xs-12 padding-right-clear padding-left-clear rightarea user">
					<div class="col-xs-12 rightarea-con ">
						<div class="index-top-icon clearfix">
							<div class="col-xs-4 top-icon">
								<div class="col-xs-12">
									<span class="assets-icon"><i class="gross"></i>可用人民币(￥)</span>
								</div>
								<div class="col-xs-12">
									<span class="text-danger font-size-30">
									<fmt:formatNumber
										value="${requestScope.fwallet.ftotal }" pattern="##.##"
										maxIntegerDigits="15" maxFractionDigits="4" />
									</span>
								</div>
								<span class="split"></span>
							</div>
							
							<div class="col-xs-4 top-icon">
								<div class="col-xs-12">
									<span class="assets-icon"><i class="net"></i>冻结人民币(￥)</span>
								</div>
								<div class="col-xs-12">
								<span class="text-danger font-size-30">
								<fmt:formatNumber
										value="${requestScope.fwallet.ffrozen }" pattern="##.##"
										maxIntegerDigits="15" maxFractionDigits="4" />
								</span>
								</div>
								<span class="split"></span>
							</div>
							<div class="col-xs-4 text-center top-btn">
								<!-- <a href="/account/withdrawCny.html" class="btn ">提现</a> -->
								<!-- <a href="/account/rechargeCny.html" class="btn btn-re">充值</a> -->
							</div>
						</div>
						<div class="col-xs-12 padding-clear padding-top-30">
							<table class="table table-striped text-center">
								<tr class="bg-gary">
									<td class="col-xs-3 border-top-clear">币种名称</td>
									<td class="col-xs-3 border-top-clear">可用资产</td>
									<td class="col-xs-3 border-top-clear">冻结资产</td>
									<td class="col-xs-3 border-top-clear">总量</td>
								</tr>
						<c:forEach items="${requestScope.fvirtualwallets }" var="v" varStatus="vs" begin="0">
							<tr>
							<td class="col-xs-3 border-top-clear">${v.value.fvirtualcointype.fname }</td>
							<td class="col-xs-3 border-top-clear"><fmt:formatNumber value="${v.value.ftotal }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/></td>
							<td class="col-xs-3 border-top-clear"><fmt:formatNumber value="${v.value.ffrozen }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/></td>
							<td class="col-xs-3 border-top-clear"><fmt:formatNumber value="${v.value.ftotal+v.value.ffrozen }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/></td>
							</tr>
						</c:forEach>
								
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	



<%@include file="../comm/footer.jsp" %>	

</body>
</html>