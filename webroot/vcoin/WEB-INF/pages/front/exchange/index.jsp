<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/include.inc.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>

<!doctype html>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@include file="../comm/link.inc.jsp"%>

<link rel="stylesheet" href="/static/front/css/finance/withdraw.css"
	type="text/css"></link>
<style type="text/css">
.col-xs-6 {
	width: 60%;
}

.withdraw .amounttips {
	width: 100%;
	height: 43px;
	line-height: 38px;
	font-size: 14px;
	border: #dcdcdc dotted 1px;
	display: block;
	margin-top: 5px;
}
</style>
</head>
<body>

	<%@include file="../comm/header.jsp"%>

	<div class="container-full padding-top-30">
		<div class="container">

			<%@include file="../comm/left_menu.jsp"%>

			<div class="col-xs-10 padding-right-clear">
				<div
					class="col-xs-12 padding-right-clear padding-left-clear rightarea withdraw">
					<div class="col-xs-12 rightarea-con">
						<ul class="nav nav-tabs rightarea-tabs">
							<c:forEach items="${fsubscriptions }" var="v" varStatus="vs">
								<li class="${fid==v.fid?'active':'' }"><a href="/exchange/index.html?id=${v.fid }">${v.ftitle }</a></li>
							</c:forEach>	
						</ul>
						<div class="col-xs-12 padding-clear padding-top-30">
							<div class="col-xs-7 padding-clear form-horizontal">
								<div class="form-group ">
									<label for="exAmount" class="col-xs-3 control-label">可用${coinName }金额</label>
									<div class="col-xs-6">
										<span class="form-control border-fff" id="exAmount"><fmt:formatNumber
															value="${coinAmt }" pattern="##.##"
															maxIntegerDigits="10" maxFractionDigits="4" /></span>
									</div>
								</div>
								<div class="form-group ">
									<label for="exAmount" class="col-xs-3 control-label">兑换比例</label>
									<div class="col-xs-6">
										<span class="form-control border-fff" id="exAmount">${fsubscription.fprice} ${fsubscription.fvirtualcointypeCost.fname}=1 ${fsubscription.fvirtualcointype.fname }</span>
									</div>
								</div>

								<div class="form-group ">
									<label for="amount" class="col-xs-3 control-label">购买数量</label>
									<div class="col-xs-6">
										<input id="amount" class="form-control" type="text"> <span
											class="amounttips"> <span> 需要${coinName } <span
												id="free" class="text-danger">--</span> </span> </span>
									</div>
								</div>
								<div class="form-group ">
									<label for="tradePwd" class="col-xs-3 control-label">交易密码</label>
									<div class="col-xs-6">
										<input id="tradePwd" class="form-control" type="password">
									</div>
								</div>

								<div class="form-group">
									<label for="exerrortips" class="col-xs-3 control-label"></label>
									<div class="col-xs-6">
										<span id="exerrortips" class="text-danger"> </span>
									</div>
								</div>
								<div class="form-group">
									<label for="exButton" class="col-xs-3 control-label"></label>
									<div class="col-xs-6">
										<button id="exButton" class="btn btn-danger btn-block"
											onclick="javascript:submitExForm();">确认兑换</button>
									</div>
								</div>
							</div>

							<div class="col-xs-12 padding-clear padding-top-30">
								<div class="panel border">
									<div class="panel-heading">
										<span class="text-danger">我的兑换记录</span> <span
											class="pull-right recordtitle" data-type="0" data-value="0">收起
											-</span>
									</div>
									<div class="panel-body" id="recordbody0">
										<table class="table">
											<tr>
												<td>兑换数量</td>
												<td>兑换价格</td>
												<td>总价格</td>
												<td class="text-right">兑换时间</td>
											</tr>

											<c:forEach items="${fsubscriptionlogs }" var="v"
												varStatus="vs">
												<tr>
													<td><fmt:formatNumber
															value="${v.fcount }" pattern="##.##"
															maxIntegerDigits="10" maxFractionDigits="4" />
													</td>
													<td>${fsubscription.fvirtualcointypeCost.fSymbol }<fmt:formatNumber
															value="${v.fprice }" pattern="##.##"
															maxIntegerDigits="10" maxFractionDigits="4" />
													</td>
													<td>${fsubscription.fvirtualcointypeCost.fSymbol }<fmt:formatNumber
															value="${v.ftotalCost }" pattern="##.##"
															maxIntegerDigits="10" maxFractionDigits="4" />
													</td>
													<td class="text-right"><fmt:formatDate value="${v.fcreatetime }"
															pattern="yyyy-MM-dd HH:mm:ss" />
													</td>
												</tr>
											</c:forEach>

											<c:if test="${fn:length(fsubscriptionlogs) == 0 }">
												<tr>
													<td colspan="4" class="no-data-tips"><span>
															您暂时没有兑换记录。 </span></td>
												</tr>
											</c:if>
										</table>

										<%-- <div class="text-right">${pagin }</div> --%>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</div>
</div>

	<input type="hidden" value="${fsubscription.fprice }" id="subRate" />
	<input type="hidden" value="${fsubscription.fid }" id="fid" />

	<%@include file="../comm/footer.jsp"%>
	<script type="text/javascript" src="/static/front/js/comm/msg.js"></script>
	<script type="text/javascript"
		src="/static/front/js/exchange/ex.js"></script>
</body>
</html>
