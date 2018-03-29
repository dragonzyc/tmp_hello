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

</head>
<body>
	

 
<%@include file="../comm/header.jsp" %>




	<div class="container-full padding-top-30">
		<div class="container displayFlex">
			
			<%@include file="../comm/left_menu.jsp" %>
			
			<div class="col-xs-10 padding-right-clear">
				<div class="col-xs-12 padding-right-clear padding-left-clear rightarea user">
					<div class="col-xs-12 rightarea-con">
						<ul class="nav nav-tabs rightarea-tabs">
							<li class="active">
								<a href="javascript:void(0)">我的订单</a>
							</li>
						</ul>

						<div class="col-xs-12 padding-clear padding-top-30">
							<table class="table table-striped">
								<tr class="bg-gary">
									<td>商品名称</td>
								    <td>状态</td>
								    <td>数量</td>
									<td>支付类型</td>
									<td>支付金额</td>
									<td>快递单号</td>
									<td class="text-right">下单日期</td>
								</tr>
								
								<c:forEach items="${fshoppinglogs }" var="v">
									<tr>
									<td>
										<a href="/shop/view.html?id=${v.fgoods.fid }" target="_blank" style="color:#333;">${v.fgoods.fname }</a>
									</td>
									<td class="red">${v.fstatus_s}</td>
									<td>${v.fqty}</td>
									<td>${v.fpaytype_s}</td>
									<td>${v.fpriceAmt}</td>
									<td><a href="http://www.kuaidi100.com/?nu=${v.fexpressNo}" target="_blank" style="color:green;">${v.fexpressNo}</a></td>
									<td><fmt:formatDate value="${v.fcreatetime }"
											pattern="yyyy-MM-dd HH:mm:ss" /></td>
									</tr>
								</c:forEach>
								
								<c:if test="${fn:length(fshoppinglogs)==0 }">
								    <tr>
										<td colspan="8" class="no-data-tips">
											<span> 暂无记录 </span>
										</td>
									</tr>
								</c:if>
							</table>
							
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