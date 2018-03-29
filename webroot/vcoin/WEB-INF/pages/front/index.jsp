<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="comm/include.inc.jsp"%>
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
<%@include file="comm/link.inc.jsp"%>
<link rel="stylesheet" href="${oss_url}/static/front/css/index/index.css" type="text/css"></link>
</head>
<body class="gray-bg">

<%@include file="comm/header.jsp"%>
	
	
	

	<div class="container-full ">
		<div class="container login-box">
			
			
			<c:if test="${sessionScope.login_user!=null }">
				<div class="login loginsuccess">
					<div class="login-bg loginin"></div>
					<div class="login-cn form-horizontal">
						<div class="form-group">
							<a href="/financial/index.html">
								<h3 class="margin-top-clear font-size-18">${login_user.floginName}</h3>
							</a>
						</div>
						<div class="login-login-cn">
							<div class="form-group">
								<!--<div class="col-xs-12">
									<span class="infobox">
										<span class="info-left">可用人民币</span>
										<span class="info-right">
											￥<fmt:formatNumber value="${fwallet.ftotal }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/>
										</span>
									</span>
								</div>
								<div class="col-xs-12">
									<span class="infobox">
										<span class="info-left">冻结人民币</span>
										<span class="info-right">
											￥<fmt:formatNumber
										value="${fwallet.ffrozen }" pattern="##.##"
										maxIntegerDigits="15" maxFractionDigits="4" />
										</span>
									</span>
								</div>-->
								<c:forEach items="${fvirtualwallets }" var="v" varStatus="vs" begin="0">
								<c:if test="${v.value.fvirtualcointype.fid==8 }">
								<div class="col-xs-12">
									<span class="infobox">
										<span class="info-left">可用${v.value.fvirtualcointype.fname }</span>
										<span class="info-right">
											<fmt:formatNumber value="${v.value.ftotal }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/>
										</span>
									</span>
								</div>
								<div class="col-xs-12">
									<span class="infobox">
										<span class="info-left">冻结${v.value.fvirtualcointype.fname }</span>
										<span class="info-right">
											<fmt:formatNumber
										value="${v.value.ffrozen }" pattern="##.##"
										maxIntegerDigits="15" maxFractionDigits="4" />
										</span>
									</span>
								</div>
								</c:if>
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-12">
								<a href="/trade/coin.html" class="btn btn-danger btn-block">进入交易中心</a>
							</div>
						</div>
						<!-- <div class="form-group">
							<div class="col-xs-6 btn-right">
								<a href="/account/rechargeCny.html" class="btn btn-danger btn-block">充值</a>
							</div>
							<div class="col-xs-6 btn-left">
								<a href="/account/withdrawCny.html" class="btn btn-danger btn-block">提现</a>
							</div>
						</div> -->
					</div>
				</div>
				</c:if>
				
				<c:if test="${sessionScope.login_user==null }">
				<div class="login">
					<div class="login-bg"></div>
					<!-- <div class="login-other-bg"></div> -->
					<div class="login-cn">
						<div class="form-group">
							<div style="color:#fff;">
			<p style=" font-size:16px; margin-bottom:5px; text-align: center;">风险提示</p>
			<p style=" font-size:12px; line-height:22px;">数字货币交易具有极高的风险（预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），据国家五部委《关于防范比特币风险的通知》，金海贝币币兑换平台仅为数字货币的爱好者提供一个自由的网上交换平台，对币的投资价值不承担任何审查、担保、赔偿的责任，如果您不能接受，请不要进行交易！谢谢！</p>
		</div>
						</div>
						<div class="form-group">
							<button id="loginbtn" class="btn btn-block btn-danger">
								登录
							</button>
						</div>
						<div class="form-group">
							<a href="/validate/reset.html">忘记密码？</a>
							<a href="/user/register.html" class="pull-right">注册</a>
						</div>
					</div>
					
					<!-- <div class="login-other">
						<a href="/link/qq/call.html">QQ登录</a><span class="split"></span> 
						<a href="javascript:weixin();" class="pull-right">微信登录</a>
					</div> -->
				</div>
				</c:if>	
			
		</div>
		<div id="shuffling" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#shuffling" data-slide-to="0" class="active"></li>
				<li data-target="#shuffling" data-slide-to="1"></li>
				<li data-target="#shuffling" data-slide-to="2"></li>
				<li data-target="#shuffling" data-slide-to="3"></li>
				<li data-target="#shuffling" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner">
				<a class="item active" target="_blank" href="${requestScope.constant['bigImageURL1'] }" style="background: url('${requestScope.constant['bigImage1'] }') no-repeat 50% 50%;height: 546px;"></a>
				<a class="item" target="_blank" href="${requestScope.constant['bigImageURL2'] }" style="background: url('${requestScope.constant['bigImage2'] }') no-repeat 50% 50%;height: 546px;"></a>
				<a class="item" target="_blank" href="${requestScope.constant['bigImageURL3'] }" style="background: url('${requestScope.constant['bigImage3'] }') no-repeat 50% 50%;height: 546px;"></a>
				<a class="item" target="_blank" href="${requestScope.constant['bigImageURL4'] }" style="background: url('${requestScope.constant['bigImage4'] }') no-repeat 50% 50%;height: 546px;"></a>
				<a class="item" target="_blank" href="${requestScope.constant['bigImageURL5'] }" style="background: url('${requestScope.constant['bigImage5'] }') no-repeat 50% 50%;height: 546px;"></a>
			</div>
		</div>
	</div>
	
	
	<div class="container-full notice" style="overflow: hidden;">
		<div class="container text-center" id="newstoplist" style="overflow: hidden; height: 45px; width: auto; color: #ffffff;">
			<div id="newsList">
				<c:forEach items="${requestScope.constant['news']}" var="v">
					<p>
					   <a href="${v.url }" class="notice-item">
							<i class="notice-item-icon"></i>
							${v.ftitle }
						</a>
					</p>
				</c:forEach>
			</div>
		</div>
	</div>
	
	
	
			<c:forEach var="vv" items="${fMap }">
				<c:if test="${vv.key.fname =='金贝'}">
				<div class="container-full index market">
					<div class="container">
					
					<div class="table-middle">
						<span class="table-middle-title">${vv.key.fname }区</span>
						<div class="table-middle-line"></div>
				</div>
					
						<div class="row market-top text-center">
							<span class="col-xs-2">币种</span> <span class="col-xs-2">最新成交价</span> <span class="col-xs-2">24H成交量</span> <span class="col-xs-2">今日涨跌</span> <span class="col-xs-2 text-center">价格趋势(3日)</span> <span class="col-xs-2"></span>
						</div>
						
						
						<c:forEach items="${vv.value }" var="v" varStatus="vs">
								<div class="row market-con">
									<a class="text-danger" href="/trade/coin.html?coinType=${v.fid }&tradeType=0">
										<span class="col-xs-2" style="font-size: 15px;">
											<i class="coin-logo" style="background: url(${v.fvirtualcointypeByFvirtualcointype2.furl });background-size:100% 100%; "></i>
											${v.fvirtualcointypeByFvirtualcointype2.fname }
										</span>
									</a>
									<span class="col-xs-2" id="${v.fid }_price">
										--
									</span>
									<span class="col-xs-2" id="${v.fid }_total">
										--
									</span>
									<span class="col-xs-2" id="${v.fid }_rose">-- </span>
									<span class="col-xs-2 text-center">
										<div id="${v.fid }_plot" style="width:100%;height:40px;display: inline-block;float: left;"></div>
									</span>
									<span class="col-xs-2">
										<a class="btn market-trading" href="/trade/coin.html?coinType=${v.fid }&tradeType=0">去交易<i class="triangle-right"></i></a>
									</span>
								</div>
					</c:forEach>
					
					</div>
				</div>
				</c:if>
			</c:forEach>
			<c:forEach var="vv" items="${fMap }">
				<c:if test="${vv.key.fname =='金海贝'}">
				<div class="container-full index market">
					<div class="container">
					
					<div class="table-middle">
						<span class="table-middle-title">${vv.key.fname }区</span>
						<div class="table-middle-line"></div>
				</div>
					
						<div class="row market-top text-center">
							<span class="col-xs-2">币种</span> <span class="col-xs-2">最新成交价</span> <span class="col-xs-2">24H成交量</span> <span class="col-xs-2">今日涨跌</span> <span class="col-xs-2 text-center">价格趋势(3日)</span> <span class="col-xs-2"></span>
						</div>
						
						
						<c:forEach items="${vv.value }" var="v" varStatus="vs">
								<div class="row market-con">
									<a class="text-danger" href="/trade/coin.html?coinType=${v.fid }&tradeType=0">
										<span class="col-xs-2" style="font-size: 15px;">
											<i class="coin-logo" style="background: url(${v.fvirtualcointypeByFvirtualcointype2.furl });background-size:100% 100%; "></i>
											${v.fvirtualcointypeByFvirtualcointype2.fname }
										</span>
									</a>
									<span class="col-xs-2" id="${v.fid }_price">
										--
									</span>
									<span class="col-xs-2" id="${v.fid }_total">
										--
									</span>
									<span class="col-xs-2" id="${v.fid }_rose">-- </span>
									<span class="col-xs-2 text-center">
										<div id="${v.fid }_plot" style="width:100%;height:40px;display: inline-block;float: left;"></div>
									</span>
									<span class="col-xs-2">
										<a class="btn market-trading" href="/trade/coin.html?coinType=${v.fid }&tradeType=0">去交易<i class="triangle-right"></i></a>
									</span>
								</div>
					</c:forEach>
					
					</div>
				</div>
				</c:if>
			</c:forEach>
	
	<div class="container-full about index">
		<div class="about-bg">
			<div></div>
		</div>
		<div class="container text-center">
			<div class="about-con-box clearfix">
				<div class="col-xs-4 about-item">
					<div class="col-xs-12 about-con">
						<h3 class="text-danger about-title">安全</h3>
						<span class="about-img security"></span>
						<p class="text-left">SSL、冷钱包机制、多重加密存储等银行级安全技术，流程化、责任化的多重审核管理体系。</p>
					</div>
				</div>
				<div class="col-xs-4 about-item">
					<div class="col-xs-12 about-con">
						<h3 class="text-danger about-title">便捷</h3>
						<span class="about-img quick"></span>
						<p class="text-left">界面简约易懂，操作方便。系统稳定高效，速度响应快。手机电脑等客户端，随时随地均可交易。</p>
					</div>
				</div>
				<div class="col-xs-4 about-item">
					<div class="col-xs-12 about-con">
						<h3 class="text-danger about-title">平等</h3>
						<span class="about-img professional"></span>
						<p class="text-left">交易有前景的投资币种，减少投资风险；致力于数字资产落地化，惠及更多线下交易者，享有平等投资机会。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-full index news">
		<div class="container text-center">
			<div class="col-xs-12 row">
				
				<c:forEach items="${requestScope.constant['news']}" var="v" begin="0" end="0">
				<div class="col-xs-6">
					<div class="news-img"></div>
					
						<div class="news-top">
							<a class="news-title" href="/service/article.html?id=${v.fid }">${v.ftitle_short }</a>
							<div class="col-xs-12 padding-left-clear">
								<a class="news-shortcon" href="/service/article.html?id=${v.fid }">${v.fcontent_short }</a>
							</div>
						</div>
						<div class="news-time">
							<p class="news-time-dd">
								<fmt:formatDate value="${v.fcreateDate }" pattern="dd"/>
							</p>
							<p class="news-time-yy">
								<fmt:formatDate value="${v.fcreateDate }" pattern="yyyy-MM"/>
							<p>
						</div>
					
				</div>
				</c:forEach>
				
				<div class="col-xs-6 text-left">
					<div class="col-xs-12">
						
						<c:forEach items="${requestScope.constant['news']}" var="v" begin="1" end="3">
							<div class="media">
								<div class="media-left">
									<p class="news-time-dd">
										<fmt:formatDate value="${v.fcreateDate }" pattern="dd"/>
									</p>
									<p class="news-time-yy">
										<fmt:formatDate value="${v.fcreateDate }" pattern="yyyy-MM"/>
									<p>
								</div>
								<div class="media-body">
									<a class="news-title" href="/service/article.html?id=${v.fid }">${v.ftitle_short }</a>
									<div class="col-xs-12 padding-clear">
										<a class="news-shortcon" href="/service/article.html?id=${v.fid }">${v.fcontent_short }</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					
					<div class="col-xs-12 padding-clear">
						<a class="news-more" href="/service/ourService.html?id=2">查看更多>></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-full index contact ">
		<div class="container">
			<div class="contact-con text-center clearfix">
				<div class="top-split"></div>
				<div class="col-xs-2 contact-item">
					<div class="icon-iten">
						<a href="http://wpa.qq.com/msgrd?v=3&uin=${requestScope.constant['serviceQQ'] }&menu=yes" target="_black">
							<i class="icon qq"></i>
						</a>
					</div>
					<p>官方QQ</p>
					<ul>
						<li>
							<a href="http://wpa.qq.com/msgrd?v=3&uin=${requestScope.constant['serviceQQ'] }&menu=yes" target="_black">${requestScope.constant['serviceQQ'] }</a>
						</li>
					</ul>
				</div>
				<div class="col-xs-2 contact-item">
					<div class="icon-iten">
						<i class="icon phone"></i>
					</div>
					<p>24小时热线</p>
					<ul>
						<li>${requestScope.constant['telephone'] }</li>
					</ul>
				</div>
				<div class="col-xs-2 contact-item">
					<div class="icon-iten">
						<i class="icon app"></i>
					</div>
					<p>${requestScope.constant['webName']}APP下载</p>
					<ul>
						<li>安卓、IOS</li>
					</ul>
					<!--  <div class="dialog" target="_black" href="#">
						<i class="dialog-icon"></i>
						<p>稍后提供 更新中</p>
					</div>-->

					<a class="dialog" target="_black" href="/dowload/index.html">						<i class="dialog-icon"></i>
						<p>点击查看下载APP</p>
					</a>
				</div>
				<div class="col-xs-2 contact-item">
					<div class="icon-iten">
						<i class="icon wechat"></i>
					</div>
					<p>官方微信</p>
					<ul>
						<li>${requestScope.constant['weibo'] }</li>
					</ul>
					<div class="dialog">
						<img alt="微信二维码" src="${requestScope.constant['weiboURL'] }">
						<p>扫描关注微信</p>
					</div>
				</div>
				
				
				
				<div class="col-xs-2 contact-item">
					<div class="icon-iten">
						<i class="icon email"></i>
					</div>
					<p>邮箱地址</p>
					<ul>
						<li>${requestScope.constant['email'] }</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	
	
	
	
			<div class="modal modal-custom fade" id="msgdetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-mark"></div>
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close btn-modal" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<span class="modal-title" id="exampleModalLabel" style="font-size: 20px;">尊敬的金海贝币币兑换平台用户：</span>
				</div>
				<div class="modal-body">
				<div class="paragraph paragraph_news" style="font-size:14px;text-indent:2em;line-height: 30px;text-align:left;">   近期受整体环境影响，在金海贝币币兑换平台进行交易的数字资产短期累计涨幅都已非常巨大，各类数字资产交易风险已急剧增大，金海贝币币交易平台已多次提醒请广大投资者要切实做好风险防范工作，要充分提高风险意识，要特别谨慎地进行交易。</div> 
				<div class="paragraph paragraph_news" style="font-size:14px;text-indent:2em;line-height: 30px;text-align:left;padding:0 20px">金海贝币币兑换平台提醒您：不投入超过风险承受能力的资金，不投资不了解的数字资产，不听信任何以金海贝币币兑换平台名义推荐买币投资的宣传，坚决抵制传销、电信诈骗和洗钱套汇等违法行为。</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: #c83935;color: #fff;border-color: #c83935;">我已了解以上风险</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	<div class="function">
		<ul class="help_list">
			<li>
				<a href="/question/question.html" target="_blank">
					<span style="width: 0px;">在线问答</span>
					<i class="help_fixed"></i>
				</a>
			</li>
			<li class="online_Service" action="udesk">
				<a href="http://wpa.qq.com/msgrd?v=3&uin=${requestScope.constant['serviceQQ'] }&menu=yes">
					<span style="width: 0px;">在线客服</span>
					<i class="help_udesk"></i>
				</a>
			</li>
			<li>
				<span style="width: 0px;">${requestScope.constant['telephone'] }</span>
				<i class="tel_fixed"></i>
			</li>
		</ul>
	</div>
	<!--底部开始-->
	<%@include file="comm/footer.jsp" %>
	<input type="hidden" id="alert" value="${alert }" />
	<input type="hidden" id="errormsg" value= />
<script type="text/javascript" src="${oss_url}/static/front/js/index/index.js"></script>
<script type="text/javascript" src="${oss_url}/static/front/js/plugin/jquery.flot.js"></script>
</body>
</html>