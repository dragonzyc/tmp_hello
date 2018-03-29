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


				<div class="product-main">
					<div class="product-img" id="product-img">
						<img src="${fgoods.fpictureUrl }">
					</div>
					<div class="product-par">
						<h2 id="productName">${fgoods.fname }</h2>
						<div class="products-price">
							<div class="price">
								<s>市场价：￥${fgoods.fmarketPrice }</s>
							</div>
							<div class="price">
								会员价:<font id="currencyUnit" color="red">￥${fgoods.fprice }</font>
							</div>
						</div>
						<div class="product-sales">
							销量：<span class="sales-num" id="salesNum">${fgoods.fsellQty }</span> 库存：<span
								class="stock-num" id="stockNum">${fgoods.flastQty }</span>
						</div>
						<div class="yListr">
							<ul id="arrtlist">
							</ul>
						</div>
						
						<div class="modal-body form-horizontal" style="float:left;">
						    <div class="form-group ">
									<label for="payType" class="col-xs-4 control-label">支付方式</label>
									<div class="col-xs-8">
										<select id="payType" class="form-control">
								            <option value="0" selected="selected">--请选择支付方式--</option>
											<c:forEach items="${payMap }" var="v">
												<option value="${v.key }">${v.value }</option>
											</c:forEach>
										</select>
										<span class="amounttips">
											<span>
												<span id="coinName"></span>&nbsp;&nbsp;&nbsp;
												<span id="coinPrice"></span>
											</span>
											<span>
												总价格:
												<span id="lastPay" class="text-danger">0</span>
											</span>
										</span>
									</div>
								</div>
							<div class="form-group ">
								<label for="amount" class="col-xs-4 control-label">购买数量</label>
								<div class="col-xs-8">
									<input id="amount" class="form-control" type="text"/>
								</div>
							</div>
							<div class="form-group">
								<label for="addCartButton" class="col-xs-3 control-label"></label>
								<div class="col-xs-8">
									<button id="addCartButton" class="btn btn-danger btn-block" onclick="javascript:buyGoods(${fgoods.fid});">立即购买</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product-conten">
					<div class="col-xs-3 aside">
						<h3>推荐商品</h3>
						<div id="product-recommend">
							<dl class="ac-mod-list">
							<c:forEach items="${hotgoods }" var="v">
								<dl class="ac-mod-list">
									<dt>
										<a href="/shop/view.html?id=${v.fid }"><img
											src="${v.fpictureUrl }">
										</a>
									</dt>
									<dd>
										${v.fname }<span>￥${v.fprice }</span>
									</dd>
								</dl>
							</c:forEach>	
							</dl>
						</div>
					</div>
					<div class="col-xs-7 product-detail">
						<div class="active_tab">
							<ul class="act_title_left">
								<li class="act_active"><a href="#">商品详情</a></li>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="active_list" id="product-details">
							${fgoods.fdescription }
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<%@include file="../comm/footer.jsp"%>
	<input type="hidden" id="isLogin" value="${isLogin }"/>
	<input type="hidden" id="goodsID" value="${fgoods.fid }"/>
	<script type="text/javascript" src="${oss_url}/static/front/js/shop/goods.js"></script>
</body>
</html>