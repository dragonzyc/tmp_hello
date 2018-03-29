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
<link rel="stylesheet" href="${oss_url}/static/front/css/shop/shop.css"
	type="text/css"></link>
</head>
<body>


	<%@include file="../comm/header.jsp"%>




	<div class="container-full padding-top-30">
		<div class="container displayFlex">

				<div class="container-fluid">
					<div class="col-xs-12 product-class">
						<dl>
							<dt>分类：</dt>
							<dd id="product-class">
							<a href="/shop/index.html?type=0&coin=${coin}" id="class_0" class="${type==0?'action':'' }">全部</a>
							<c:forEach items="${ftypeList }" var="v">
							      <a href="/shop/index.html?type=${v.fid}&coin=${coin}" id="class_${v.fid }" class="${type==v.fid?'action':'' }">${v.fname }</a>
							</c:forEach>
							</dd>
						</dl>
						<dl>
							<dt>币种：</dt>
							<dd id="product-currency">
							<a href="/shop/index.html?type=${type}&coin=0" id="currency_0"
									 class="${coin==0?'action':'' }">全部</a>
							<c:forEach items="${fvirtualcointypes }" var="v">
								<a href="/shop/index.html?type=${type}&coin=${v.fid}" id="currency_${v.fid }"
									 class="${coin==v.fid?'action':'' }">${v.fname }</a>
							</c:forEach>		
							</dd>
						</dl>
					</div>
					<div class="col-xs-12  padding-right-clear padding-left-clear padding-top-30" style="width: 1170px;">
					<c:forEach items="${fgoods }" var="v">
							<div class="col-xs-3 products-grid text-center">
								<a class="product-here" href="/shop/view.html?id=${v.fid }"><img
									src="${v.fpictureUrl }" title="${v.fname }" />
								</a>
								<h4>
									<a href="/shop/view.html?id=${v.fid }">${v.fname }</a>
								</h4>
								<div class="products-stock">
									<span>￥<font color="#a52a2a">${v.fprice }</font>
									</span> <span>销量：${v.fsellQty }</span>
								</div>
								<div class="product-btn">
									<a href="/shop/view.html?id=${v.fid }" class="btn btn-danger btn-width">购买 </a>
								</div>
							</div>
					</c:forEach>		
					</div>
				</div>

		</div>
	</div>



	<%@include file="../comm/footer.jsp"%>
</body>
</html>