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

<link rel="stylesheet" href="${oss_url}/static/front/css/finance/withdraw.css"
	type="text/css"></link>
<style type="text/css">
.hongbi-count {
	width: 100%;
	height: 180px;
	overflow: hidden;
	background: #fff3c8;
	text-align: center;
	border: 1px solid #eee;
	box-sizing: border-box;
}

.hongbi-count h2,.hongbi-count h2 span {
	font-size: 20px;
	font-weight: 700;
	margin: 25px 0 30px 0;
}

.hongbi-count h2 span {
	color: #99cc33;
}

.hongbi-count p {
	font-size: 18px;
}

.hongbi-count p span {
	color: #e60012;
	font-size: 30px;
}

.hongbi-tip {
	width: 100%;
	line-height: 22px;
	padding: 10px 20px 0;
	box-sizing: border-box;
	font-size: 14px;
	color: #19191a;
	border: solid #eee;
	border-width: 0 1px 1px 1px;
	margin-bottom: 16px;
}
</style>
</head>
<body>

	<%@include file="../comm/header.jsp"%>

	<div class="container-full padding-top-30">
		<div class="container displayFlex">

			<%@include file="../comm/left_menu.jsp"%>

			<div class="col-xs-10 padding-right-clear">
				<div
					class="col-xs-12 padding-right-clear padding-left-clear rightarea withdraw">
					<div class="col-xs-12 rightarea-con">
						<ul class="nav nav-tabs rightarea-tabs">
							<li class="active"><a href="/divide/index.html">每日分红</a>
							</li>
							<li class=""><a href="/divide/myGivenCoin.html">分红虚拟币</a>
							</li>
							<li class=""><a href="/divide/myGivenCNY.html">分红人民币</a>
							</li>
						</ul>
						<div class="col-xs-12 padding-clear padding-top-30">

							<div class="hongbi-count">
								<h2>
									当前分红币为:<span>${cointype1.fname }</span>,待分红人民币金额：<span>￥<fmt:formatNumber
											value="${total }" pattern="##.##"
											maxIntegerDigits="15" maxFractionDigits="4" /></span>
								</h2>
								<p>
									我的分红币总数量：<span><fmt:formatNumber value="${self_trade1 }"
											pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4" />
									</span>个
								</p>
								<p>
									全站分红币总数量：<span><fmt:formatNumber
											value="${total_trade1 }" pattern="##.##"
											maxIntegerDigits="15" maxFractionDigits="4" />
									</span>个
								</p>
								
							</div>

							<div class="col-xs-12 padding-clear padding-top-30">
								<div class="panel panel-tips">
									<div class="panel-header text-center text-danger">
										<span class="panel-title">分红须知</span>
									</div>
									<div class="panel-body">
										<p>&lt ${requestScope.constant['divideTitle'] }</p>
										<p> 手续费领取时间:${divideStartTime }~${divideEndTime }</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 padding-clear padding-top-30">
								<div class="panel border">
									<div class="panel-heading">
										<span class="text-danger">领取分红手续费</span> <span
											class="pull-right recordtitle" data-type="0" data-value="0">收起
											-</span>
									</div>
									<div  id="recordbody0" class="panel-body">
										<table class="table">
											<tr>
												<td>币种</td>
												<td>今日交易总手续费</td>
												<td>预计可领取数量</td>
												<td class="text-right">操作</td>
											</tr>
											<c:forEach items="${allKey }" var="v">
												<tr>
													<td>${v.name }</td>
													<td><fmt:formatNumber value="${v.total }"
															pattern="##.##" maxIntegerDigits="15"
															maxFractionDigits="4" /></td>
													<td>
														<c:choose>
															<c:when test="${v.status ==1 }">
																<fmt:formatNumber value="${v.value }"
															pattern="##.##" maxIntegerDigits="15"
															maxFractionDigits="4" />
															</c:when>
															<c:when test="${v.status ==2 }">
																0
															</c:when>
															<c:otherwise>
																<fmt:formatNumber value="${v.value }"
															pattern="##.##" maxIntegerDigits="15"
															maxFractionDigits="4" />
															</c:otherwise>
														</c:choose>	
													</td>	
													<td class="text-right">
													   <c:choose>
															<c:when test="${v.status ==1 }">
																<font color="red">未可领取</font>
															</c:when>
															<c:when test="${v.status ==2 }">
																<font color="red">已领取</font>
															</c:when>
															<c:otherwise>
																<a href="javascript:getDivide('${v.name }',${v.key }) ;" style="color:green;">领取</a>
															</c:otherwise>
														</c:choose>
													</td>
												</tr>
											</c:forEach>
											<c:if test="${fn:length(allKey) == 0 }">
												<tr>
													<td colspan="4" class="no-data-tips"><span>
															暂无记录。 </span></td>
												</tr>
											</c:if>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="../comm/footer.jsp"%>
	<script type="text/javascript" src="${oss_url}/static/front/js/comm/msg.js"></script>
<script type="text/javascript">
	function getDivide(name,id){
	
		var param={name:name,id:id};
		var url = "/json/divide/getDividecoin.html";
		$.post(url, param, function(result) {
		if (result != null) {
			util.showerrortips("", result.message, {
					okbtn : function() {
						location.reload(true);
					}
			});
		}
	});
	};
	
	$(".recordtitle").on("click", function() {
		util.recordTab($(this));
	});
</script>
</body>
</html>
