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

<link rel="stylesheet" href="${oss_url}/static/front/css/zhongchou/zc.css" type="text/css"></link>
</head>
<body>



	<%@include file="../comm/header.jsp"%>




	<div class="container-full">
		<div class="container displayFlex">

			<div class="autobox">

             <c:forEach items="${fsubscriptions }" var="v">
				<div class="crowd_con crowd_con_list clear">
					<div class="crowd_con_l crowd_con_list_l">
						<div class="crowd_bi clear">
							<span class="crowd_bi_hlb">
							<img src="${v.fvirtualcointype.furl }" width="50px" height="50px"/>
							</span>
							<h2>
								<a href="/crowd/view.html?fid=${v.fid }">${v.ftitle }</a>
							</h2>
							<div class="crowd_hui crowd_hui_${v.fstatus=='申购中'?'green':'red' }">
								<em></em>${v.fstatus }
							</div>
							<div style="float: right;width: 60px;height: 30px;border-radius: 2px;background-color: red;margin-top: 14px;
							margin-right: 10px;line-height: 28px;padding: 2px 8px;color: #fff;text-align: center;display: ${v.fisICO==true?'block':'none' };">ICO</div>
						</div>
						<ul class="crowd_subscribe clear">
							<li style="list-style-type:none;">
								<p>申购总份数(${v.fvirtualcointype.fShortName })</p>
								<span class="red"> <fmt:formatNumber value="${v.ftotal }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/></span></li>
							<li style="list-style-type:none;">
								<p>最多申购份数</p>
								<span class="red">
								<c:choose>
								<c:when test="${v.fbuyCount ==0 }">
								不限制
								</c:when>
								<c:otherwise>
								<fmt:formatNumber value="${v.fbuyCount }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/>
								</c:otherwise>
								</c:choose>
								</span></li>
							<li style="list-style-type:none;">
								<p>最小申购份数</p>
								<span class="red">
                                <fmt:formatNumber value="${v.fminbuyCount }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/>
								</span></li>	
							<li style="list-style-type:none;">
								<p>最多申购次数</p>
								<span class="red">
								<c:choose>
								<c:when test="${v.fbuyTimes ==0 }">
								不限制
								</c:when>
								<c:otherwise>
								<fmt:formatNumber value="${v.fbuyTimes }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/>
								</c:otherwise>
								</c:choose>
								</span></li>
							
							<li style="list-style-type:none;">
								<p>单价</p>
								<span class="red">
								<c:if test="${v.fcoinRate1 >0 }">
								${v.symbol1 }<fmt:formatNumber value="${v.price1 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="4"/>
								</c:if>
								<c:if test="${v.fcoinRate2 >0 }">
								<c:if test="${v.fcoinRate1 >0 }">
								+
								</c:if>
								${v.symbol1_2 }<fmt:formatNumber value="${v.price2 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="4"/>
								</c:if>
								
								</span>
								</li>
							
						</ul>
					</div>
					
					<div class="crowd_con_list_r crowd_con_list_r">
						<p class="crowd_con_lp">
						已申购份数:
							<b class="green"> <fmt:formatNumber value="${v.fAlreadyByCount }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="0"/></b>
						</p>
						<c:if test="${v.fcoinRate1 >0 }">
						<p class="crowd_con_lp">
							已参与${v.symbol } ：<b class="green"><fmt:formatNumber value="${v.total1 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="4"/></b>
						</p>
						</c:if>
						<c:if test="${v.fcoinRate2 >0 }">
						<p class="crowd_con_lp">
							已参与${v.symbol_2 } ：<b class="green"><fmt:formatNumber value="${v.total2 }" pattern="##.##" maxIntegerDigits="20" maxFractionDigits="4"/></b>
						</p>
						</c:if>
						
						<div class="login_button">
							<a href="/crowd/view.html?fid=${v.fid }" class="login_button_zc ${v.fstatus=='申购中'?'':'login_button_zc_js' }">
							${v.fstatus=='申购中'?'立即申购':v.fstatus }
							</a>
						</div>
					</div>
				</div>
           </c:forEach>
				

				
			</div>
		</div>
	</div>



	<%@include file="../comm/footer.jsp"%>


</body>
</html>