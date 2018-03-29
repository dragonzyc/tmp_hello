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

				<div class="order-warp">
					<div class="cartbox">
						<div class="cartboxtitle">订单信息</div>
						<div class="hyjh" id="cart-product">
							<dl>
								<dd class="cart-tit">产品名称</dd>
								<dd class="cart-tit-attr"></dd>
								<dd class="cart-tit-amount">数量</dd>
								<dd class="cart-tit-price">合计</dd>
							</dl>
							<dl>
								<dt>
									<img
										src="${fgoods.fpictureUrl }"
										alt="" width="100" height="100" />
								</dt>
								<dd class="cart-attr">
									<p>
										产品名称：<span>${fgoods.fname }</span>
									</p>
									<p class="product-attr"></p>
								</dd>
								<dd class="cart-amount">${qty }</dd>
								<dd class="cart-price">${total }</dd>
							</dl>
						</div>
					</div>
					<div class="cartbox">
						<div class="cartboxtitle">
							<span class="fl">确认收货地址</span> <span class="f12 fr"><a
								href="/shop/address.html" target="_blank">管理收货地址</a> </span>
						</div>
						<ul class="qrshdz" id="myaddress_list">
						<c:forEach items="${goodsAddress }" var="v" varStatus="n">
							<li class="${n.index==0?'hover':'' }" data="${v.fid }">
							<span class="jsz">寄送至</span><span class="spanradio">${v.fprovince}${v.fcity}${v.fdist}${v.fdesc}（${v.frecName}收）${v.fphone }</span>
							</li>
						</c:forEach>	
						</ul>
					</div>
					<div class="cartbox">
						<div class="cartboxtitle">支付<font color="red">(一旦完成购买，将无法取消订单，请您确认后再操作)</font></div>
						<div class="modal-body form-horizontal">
							<div class="form-group ">
								<label for="remark" class="col-xs-3 control-label">备注</label>
								<div class="col-xs-6">
									<input id="remark" class="form-control" type="text" placeholder=""/>
								</div>
							</div>
							<div class="form-group ">
								<label for="tradePwd" class="col-xs-3 control-label">交易密码</label>
								<div class="col-xs-6">
									<input id="tradePwd" class="form-control" type="password">
								</div>
							</div>
							<div class="form-group">
								<label for="submitGoodsButton" class="col-xs-3 control-label"></label>
								<div class="col-xs-6">
									<button id="submitGoodsButton" class="btn btn-danger btn-block">确认支付</button>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<%@include file="../comm/footer.jsp"%>
	<input type="hidden" id="id" value="${fgoods.fid }"/>
	<input type="hidden" id="qty" value="${qty }"/>
	<input type="hidden" id="payType" value="${payType }"/>
    <script type="text/javascript" src="${oss_url}/static/front/js/shop/goodsPay.js"></script>
</body>
</html>