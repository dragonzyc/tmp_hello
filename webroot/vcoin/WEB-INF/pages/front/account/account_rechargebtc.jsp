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

<link rel="stylesheet" href="${oss_url}/static/front/css/finance/recharge.css" type="text/css"></link>
</head>
<body>
	



 <%@include file="../comm/header.jsp" %>

	<div class="container-full padding-top-30">
		<div class="container displayFlex">
		
		
			<%@include file="../comm/left_menu.jsp" %>
			
			
			<div class="col-xs-10 padding-right-clear">
				<div class="col-xs-12 padding-right-clear padding-left-clear rightarea recharge">
					<div class="col-xs-12 rightarea-con">
						<ul class="nav nav-tabs rightarea-tabs">
							<!--<li>
								<a href="/account/rechargeCny.html?type=1">充值</a>
							</li>-->
							<c:forEach items="${requestScope.constant['allRechargeCoins'] }" var="v">
								<li class="${v.fid==symbol?'active':'' }">
									<a href="/account/rechargeBtc.html?symbol=${v.fid }">${v.fShortName } 充值</a>
								</li>
							</c:forEach>
							
						</ul>
						<div class="col-xs-12 padding-clear padding-top-30 recharge-qrcodetext">
							<div class="col-xs-2 text-right">
								<span>充值地址</span>
							</div>
							<div class="col-xs-7 recharge-qrcodecon address">
								
									<span class="code-txt">${fvirtualaddress.fadderess}</span>
									<span class="code-box">
										<span class="qrcode" id="qrcode"></span>
									</span>
								
								
							</div>
						</div>
						<div class="col-xs-12 padding-clear padding-top-30">
							<div class="panel panel-tips">
								<div class="panel-header text-center text-danger">
									<span class="panel-title">充值须知</span>
								</div>
								<div class="panel-body">
									<p>&lt ${requestScope.constant['btcRechageDesc'] }。</p>
									<p>&lt 您充值${fvirtualcointype.fname }上述地址后，需要整个${fvirtualcointype.fname }网络节点的确认，为了快速到账，您可以向${fvirtualcointype.fname }网络支付少量的手续费。</p>
									<p>&lt 最小充值金额是：0.0001 您的${fvirtualcointype.fname }地址不会改变，可以重复充值，如有更改，我们会通过网站公告或邮件通知您。</p>
								</div>
							</div>
						</div>
						<div class="col-xs-12 padding-clear padding-top-30">
							<div class="panel border">
								<div class="panel-heading">
									<span class="text-danger">${fvirtualcointype.fname }充值记录</span>
								</div>
								<div  id="recordbody0" class="panel-body">
									<table class="table">
										<tr>
											<td>最后更新</td>
											<td>充值地址</td>
											<td>充值数量</td>
											<td>确认数</td>
											<td>状态</td>
										</tr>
										<c:forEach items="${fvirtualcaptualoperations }" var="v" varStatus="vs">
											<tr>
											    <td width="200">${v.flastUpdateTime }</td>
												<td width="350">${v.recharge_virtual_address }</td>
												<td width="100"><fmt:formatNumber value="${v.famount }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/></td>
												<td width="100">${v.fconfirmations }</td>
												<td width="100">${v.fstatus_s }</td>
											</tr>
										</c:forEach>
										<c:if test="${fn:length(fvirtualcaptualoperations)==0 }">
											<tr>
												<td align="center" colspan="5">
													<span class="no-data-tips">
														您暂时没有充值数据
													</span>
												</td>
											</tr>
										</c:if>
										
									</table>
									
									<input type="hidden" value="${cur_page }" name="currentPage" id="currentPage"></input>
											<div class="text-right">
												${pagin }
											</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	




 <%@include file="../comm/footer.jsp" %>


	<input type="hidden" id="symbol" value="4">
	<script type="text/javascript" src="${oss_url}/static/front/js/finance/account.recharge.js"></script>
	<script type="text/javascript" src="${oss_url}/static/front/js/plugin/jquery.qrcode.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			if (navigator.userAgent.indexOf("MSIE") > 0) {
				jQuery('#qrcode').qrcode({
					text : '${fvirtualaddress.fadderess}',
					width : "149",
					height : "143",
					render : "table"
				});
			} else {
				jQuery('#qrcode').qrcode({
					text : '${fvirtualaddress.fadderess}',
					width : "149",
					height : "143"
				});
			}
		});
	</script>
</body>
</html>
