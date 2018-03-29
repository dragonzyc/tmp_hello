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

<link rel="stylesheet" href="${oss_url}/static/front/css/finance/assetsrecord.css" type="text/css"></link>
</head>
<body>

 <%@include file="../comm/header.jsp" %>

	<div class="container-full padding-top-30">
		<div class="container displayFlex">
			
<%@include file="../comm/left_menu.jsp" %>

			<div class="col-xs-10 padding-right-clear">
				<div class="col-xs-12 padding-right-clear padding-left-clear rightarea assetsrecord">
					<div class="col-xs-12 rightarea-con">
					
					<ul class="nav nav-tabs rightarea-tabs">
							<li class="active">
								<a href="javascript:void(0)">资产记录</a>
							</li>
						</ul>
					
						<div class="col-xs-12 padding-clear padding-top-30">
							<table class="table table-striped text-center">
								<tbody>
								<tr class="bg-gary">
									<td>日期</td>
									<td>类型</td>
									<td>人民币(￥)</td>
									<c:forEach var="v" varStatus="vs" items="${fvirtualcointypes }">
										<c:if test="${v.fname !='比特币' }">
										<c:if test="${v.fname !='星际币' }">
										<td>${v.fname }(${v.fSymbol })</td>
										</c:if>
										</c:if>
										<c:if test="${v.fname =='星际币' }">
										 <td>XX(XX)</td>
										</c:if>
										<c:if test="${v.fname =='比特币' }">
										 <td>XX(XX)</td>
										</c:if>
									</c:forEach>
									<!-- <td>预估总资产(￥)</td> -->
								</tr>
								
								<c:forEach items="${list }" var="v" varStatus="vs">
									<tr>
										<td>
											<span class="second borderright">
												<fmt:formatDate value="${v.flastupdatetime }" pattern="yyyy-MM-dd"/>
											</span>
										</td>
										<td>
											<span class="borderbottom borderright">可用</span>
											<span class="borderright">冻结</span>
										</td>
										<c:forEach var="vv" varStatus="vvs" items="${v.list }">
											<c:if test="${v.fid !=5 }">
											<c:if test="${v.fid !=6 }">
											<td>
												<span class="borderbottom borderright">
													<fmt:formatNumber value="${vv.value1 }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="2"/>
												</span>
												<span class="borderbottom borderright">
													<fmt:formatNumber value="${vv.value2 }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="2"/>
												</span>
											</td>
											</c:if>
											</c:if>
											<c:if test="${v.fid ==5 }">
											<td>
												<span class="borderbottom borderright">
													<fmt:formatNumber value="${vv.value1 }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="2"/>
												</span>
												<span class="borderbottom borderright">
													<fmt:formatNumber value="${vv.value2 }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="2"/>
												</span>
											</td>
											</c:if>
											<c:if test="${v.fid ==6 }">
											<td>
												<span class="borderbottom borderright">
													<fmt:formatNumber value="${vv.value1 }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="2"/>
												</span>
												<span class="borderbottom borderright">
													<fmt:formatNumber value="${vv.value2 }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="2"/>
												</span>
											</td>
											</c:if>
										</c:forEach>
										<%-- <td>
											<span class="second">
												<fmt:formatNumber value="${v.ftotal }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="2"/>
											</span>
										</td> --%>
									</tr>
								
								</c:forEach>
								<c:if test="${fn:length(list) == 0 }">			
									<tr>
										<td colspan="${fn:length(fvirtualcointypes)+3 }" class="no-data-tips">
											<span>
												您暂时没有记录。
											</span>
										</td>
									</tr>
								</c:if>	
								
								
							</tbody></table>
							
								<div class="text-right">
									${pagin }
								</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	



<%@include file="../comm/footer.jsp" %>	

</body>
</html>