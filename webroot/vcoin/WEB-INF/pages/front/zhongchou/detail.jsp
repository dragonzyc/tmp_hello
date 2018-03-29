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

<link rel="stylesheet" href="${oss_url}/static/front/css/zhongchou/zc.css"
	type="text/css"></link>
</head>
<body>


	<%@include file="../comm/header.jsp"%>


	<div class="container-full" style="margin-top: 10px;">
		<div class="container displayFlex">

			<div class="autobox">
				<div class="crowd_center clear po_re zin70">
					<div class="crowd_con clear">
						<div class="crowd_con_l " style="width: 740px;height: 320px;">
							<div class="crowd_bi clear">
								<span class="crowd_bi_hlb">
								<img src="${fsubscription.fvirtualcointype.furl }" width="50px" height="50px"/>
								</span>
								<h2>
									<a href="/crowd/view.html?fid=${fsubscription.fid }">${fsubscription.ftitle }</a>
								</h2>
								<div class="crowd_hui crowd_hui_${fsubscription.fstatus=='申购中'?'green':'red' }">
									<em></em>${fsubscription.fstatus}
								</div>
								<div style="float: right;width: 60px;height: 30px;border-radius: 2px;background-color: red;margin-top: 14px;
							     margin-right: 10px;line-height: 28px;padding: 2px 8px;color: #fff;text-align: center;display: ${fsubscription.fisICO==true?'block':'none' };">ICO</div>
							</div>
							<ul class="crowd_subscribe clear">
								<li style="list-style-type:none;">
								<p>申购总份数(${fsubscription.fvirtualcointype.fShortName })</p>
								<span class="red"> <fmt:formatNumber value="${fsubscription.ftotal }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/></span></li>
								<li style="list-style-type:none;">
								<p>申购池剩余份数(${fsubscription.fvirtualcointype.fShortName })</p>
								<span class="red"> <fmt:formatNumber value="${fsubscription.ftotal-fsubscription.fAlreadyByCount }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/></span></li>
							<li style="list-style-type:none;">
								<p>单价</p>
								<span class="red">
							    <c:if test="${fsubscription.fcoinRate1 >0 }">
								${fsubscription.symbol1 }<fmt:formatNumber value="${fsubscription.price1 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="4"/>
								</c:if>
								<c:if test="${fsubscription.fcoinRate2 >0 }">
								<c:if test="${fsubscription.fcoinRate1 >0 }">
								+
								</c:if>
								${fsubscription.symbol1_2 }<fmt:formatNumber value="${fsubscription.price2 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="4"/>
								</c:if>
							</span></li>
							</ul>
							<div class="crowd_time">
								<div>
								<c:choose>
								<c:when test="${fsubscription.fstatus=='申购中'}">
								　　　<p class="crowd_con_lp" id="cdstatus">距离申购结束还有：</p>
									<div class="crowd_time_all">
										<div id="t_d">
											<em>天</em>
										</div>
										<div id="t_h">
											<em>时</em>
										</div>
										<div id="t_m">
											<em>分</em>
										</div>
										<div id="t_s">
											<em>秒</em>
										</div>
									</div>
								</c:when>
								<c:when test="${fsubscription.fstatus=='未开始'}">
								　　　<p class="crowd_con_lp" id="cdstatus">距离申购开始还有：</p>
									<div class="crowd_time_all">
										<div id="t_d">
											<em>天</em>
										</div>
										<div id="t_h">
											<em>时</em>
										</div>
										<div id="t_m">
											<em>分</em>
										</div>
										<div id="t_s">
											<em>秒</em>
										</div>
									</div>
								</c:when>
								<c:otherwise>
								   <p style="text-align: center; font-size: 22px; letter-spacing: 1px; line-height: 70px;">申购成功</p>
								</c:otherwise>
								</c:choose>
								</div>
							</div>
							<div class="crowd_pro">
								<progress value="<fmt:formatNumber value="${fsubscription.fAlreadyByCount }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/>" max="${fsubscription.ftotal }"></progress>
								<span><fmt:formatNumber value="${fsubscription.fAlreadyByCount/fsubscription.ftotal*100 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="2"/>%</span>
							</div>
							<div class="crowd_xq">
								<span>
								已申购份数:
								<fmt:formatNumber value="${fsubscription.fAlreadyByCount }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/></span>
								
								<c:if test="${fsubscription.fcoinRate1 >0 }">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span>已支持${fsubscription.symbol }：<fmt:formatNumber value="${fsubscription.total1 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="4"/></span>
								</c:if>
								
								<c:if test="${fsubscription.fcoinRate2 >0 }">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span>已支持${fsubscription.symbol_2 }：<fmt:formatNumber value="${fsubscription.total2 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="4"/></span>
							    </c:if>
							</div>
						</div>

						<div class="crowd_con_r">
							<div class="crowd_my">
								<h2>我要申购</h2>
									<div class="login_button">
										<p class="crowd_con_lp crowd_con_lp2">
											<%-- 您目前可用${fsubscription.symbol }：<span id="finance_span" class="green">
											<fmt:formatNumber value="${totalAmt }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="2"/>
											</span>
											<a href="${rechargeUrl }" target="_blank" class="orange crowd_recharge">去充值</a> --%>
										</p>
									</div>
									<div class="login_text zin90 clear">
										<span id="subCrowdNum" class="crowd_num">-</span> <input
											type="text" id='crowd_num'
											style="width: 163px; margin:0px 5px;float: left"
											onkeyup="crowdnumChange(this);"
											placeholder="请输入您要申购的份数" /> <span id="addCrowdNum"
											class="crowd_num">+</span>
									</div>

									<div class="login_text zin80">
										<input type="password" id="pwtrade" name='pwtrade' value=""
											placeholder="请输入交易密码" />
									</div>
									<div class="login_button">
									<c:choose>
									<c:when test="${fsubscription.fstatus=='申购中'}">
										<input type="button" value="立即申购" onclick="joincrowd()" class="login_button_x"/>
									</c:when>
									<c:otherwise>
										<input style="background: #aaa" value="申购${fsubscription.fstatus}" onclick="return false" type="button">
									</c:otherwise>	
									</c:choose>	
									</div>
									<div class="login_button">
										<a href="/crowd/logs.html" target="_blank" class="right crowd_look orange">查看我的申购记录</a>
									</div>
							</div>
						</div>
					</div>

					<div class="crowd_rule crowd_asch">
						<h1 class="crowd_rule_t">申购规则</h1>
						<div class="crowd_rule_con crowd_asch_con">
							${fsubscription.fcontent }
						</div>
					</div>

				</div>
			</div>

		</div>
</div>



<input type="hidden" id="type" value="${fsubscription.fisICO==true?'金额':'份数' }"/>
<input type="hidden" id="start" value="${s }"/>
<input type="hidden" id="end" value="${e }"/>
<input type="hidden" id="subid" value="${fsubscription.fid }"/>
	<%@include file="../comm/footer.jsp"%>
	<script type="text/javascript" src="${oss_url}/static/front/js/zc/zc.js"></script>
</body>
</html>