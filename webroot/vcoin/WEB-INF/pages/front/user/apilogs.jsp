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
<link rel="stylesheet" href="${oss_url}/static/front/css/shop/address.css" type="text/css"></link>
</head>
<body>
	

 
<%@include file="../comm/header.jsp" %>

	<div class="container-full padding-top-40">
		<div class="container displayFlex">
			
<%@include file="../comm/left_menu.jsp" %>

			<div class="col-xs-10 padding-right-clear">
				<div class="col-xs-12 padding-right-clear padding-left-clear rightarea">
					<div class="col-xs-12 rightarea-con">
						<div class="col-xs-12 text-center">
							<span class="address-apply-header">
								<i class="address-apply-header-line left"></i>API交易记录<i class="address-apply-header-line right"></i>
							</span>
						</div>
	 	 	
						<div class="col-xs-12 padding-clear padding-top-30">
							<div class="panel border">
								<div class="panel-heading">
										<span class="text-danger">交易记录</span>
										<span class="pull-right recordtitle" data-type="0" data-value="0">收起 -</span>
									</div>
								<div  id="recordbody0" class="panel-body">
									<table class="table">
										<tr>
											<td>应用名称</td>
											<td>数字资产名称</td>
											<td>类型</td>
											<td>状态</td>
											<td>数量</td>
											<td class="text-right">操作时间</td>
										</tr>
										<c:forEach items="${apitransfers }" var="v" varStatus="vs">
											<tr>
											    <td>${v.fapiname.fname }</td>
												<td>${v.fvirtualcointype.fname }</td>
												<td>${v.ftype_s }</td>
												<td>${v.fstatus_s }</td>
												<td><fmt:formatNumber value="${v.fqty }" pattern="##.##" maxIntegerDigits="16" maxFractionDigits="4"/></td>
												<td class="text-right">${v.fcreatetime }</td>
											</tr>
										</c:forEach>
										<c:if test="${fn:length(apitransfers)==0 }">
											<tr>
												<td align="center" colspan="6">
													<span class="no-data-tips">
														您暂时没有交易记录
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
<script type="text/javascript" src="${oss_url}/static/front/js/shop/address.js"></script>
</body>
</html>