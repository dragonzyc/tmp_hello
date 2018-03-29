<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="include.inc.jsp"%>
<style>
.nav .open>a, .nav .open>a:hover, .nav .open>a:focus {
    background-color: transparent !important;
    border-color: #c83935;
}
</style>
<div id="allheader" class="container-full allheader${isIndex ==1?'-index':'' }">
	<div class="header-mark"></div>
	<div class="header-mark-bot"></div>
	<div class="container-full header clearfix ">
		<div class="container-full top header-nav">
			<div class="container padding-right-clear">
				<div class="col-xs-12 padding-right-clear">
					<div class="navbar">
						<div class="navbar-header navbar-default">
							<a class="navbar-brand" href="/"> <img alt="${requestScope.constant['webName']}" src="${requestScope.constant['logoImage'] }">
							</a>
						</div>
						
						<div class="collapse navbar-collapse navbar-right">
							<ul class="nav navbar-nav ">
								<li class="">
									<a href="/">首页
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>		
								<li class="">
									<a href="/account/rechargeCny.html">C2C
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
								<li class="">
									<a href="javascript:void(0);" scribe_scanned="true">交易中心<b class="caret"></b><div class="relative">
									<span class="line"></span>	</div></a>
								<ul class="drop" style="margin-top: 10px;">
									<div style="padding-top: 9px;">
									<i></i>
								<c:forEach items="${requestScope.constant['fbs']}" var="v">	
									<li>
								  		<a href="/trade/type.html?type=${v.fid }"scribe_scanned="true">
								    		<span>${v.fname }交易区</span>
								        </a>
									</li>
								</c:forEach>
									</div>
								</ul>
								</li>
								
								<li class="">
									<a href="/financial/index.html">财务中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
								<li class="">
									<a href="/market.html">行情中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
								<!-- <li class="">
									<a href="/crowd/index.html">申购中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li> -->
								
								<li class="">
									<a href="http://www.bekebeke.com">商城中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
								<li class="">
									<a href="/user/security.html">个人中心
										<div class="relative">
											<span class="line"></span>
										</div>
									</a>
								</li>
							</ul>
							<div class="login-register clearfix">
								<div class="lr-mark"></div>
								<div class="lr-con">
									<c:if test="${sessionScope.login_user == null }">
										<a href="/user/login.html" class="lr-item">登录</a>
										<span class="lr-item padding-left-clear padding-right-clear">|</span>
										<a href="/user/register.html" class="lr-item">注册</a>
									</c:if>
									<c:if test="${sessionScope.login_user != null }">
									<div class="">
											<span class="lr-item user-slide"> <a href="/financial/index.html">hi，${login_user.fnickName}</a> <span class="caret"></span> <span class="slide-box">
													<div class="slide-box-mark"></div>
													<div class="slide-box-top">
														<span class="slide-levelBox"> <span class="slide_vip vip${login_user.fscore.flevel }"></span> 
																<span class="slide_vip-hint">会员</span>
															 
														</span> <span class="slide-con"> <span class="loginname">${login_user.floginName}</span> <span class="uid"> UID:${login_user.fid}<font color="#f68701">(${login_user.fuserType_s})</font></span>
														</span> <a href="/user/security.html" class="btn btn-link pull-right slide-link">设置&gt;&gt;</a>
													</div>
													<div class="slide-box-con">
														<!-- <div class="assets">
															<span> 会员级别： <span id="headertotalasset" class="text-danger"></span>
															</span> 
														</div> -->
														<div class="assets-detail">
															<ul class="first title clearfix">
																<li class="col-xs-3 padding-left-clear">币种</li>
																<li class="col-xs-3 text-center">可用</li>
																<li class="col-xs-3 text-center">冻结</li>
															</ul>
																
															<ul id="headercny0" class="clearfix">
																<li class="col-xs-3 padding-left-clear">人民币</li>
																<li class="col-xs-3 text-center text-danger">
																	<fmt:formatNumber value="${fwallet.ftotal }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/>
																</li>
																<li class="col-xs-3 text-center">
																	<fmt:formatNumber value="${fwallet.ffrozen }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/>
																</li>
															</ul>
															<c:forEach items="${fvirtualwallets }" var="v" varStatus="vs" begin="0">
																<ul id="headercoin${v.value.fvirtualcointype.fid }" class="clearfix ${((vs.index+1)%2)!=0?'first':'' }">
																	<li class="col-xs-3 padding-left-clear">${v.value.fvirtualcointype.fname }</li>
																	<li class="col-xs-3 text-center text-danger">
																		<fmt:formatNumber value="${v.value.ftotal }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/>
																	</li>
																	<li class="col-xs-3 text-center">
																		<fmt:formatNumber value="${v.value.ffrozen }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="4"/>
																	</li>
																</ul>
															</c:forEach>

														</div>
														<div class="assets-btn">
															<!-- <a href="/account/rechargeCny.html" class="btn btn-danger btn-block">充值充币</a> -->
															 <!-- <a href="/account/withdrawCny.html" class="btn btn-success btn-block">提现提币</a> -->
														</div>
													</div>
											</span>
											</span> <a href="/user/logout.html" class="lr-item lr-margin" style="color: red;">[退出]</a>
										</div>
									
									</c:if>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
<c:if test="${isIndex !=1 }">	
	<div class="container-full notice" style="overflow: hidden;">
		<div class="container text-center" id="newstoplist" style="overflow: hidden; height: 50px; width: auto; color: #ffffff;">
			<div id=newsList>
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
</c:if>
	
</div>


<!-- <script type="text/javascript">
$('.slide-box-con').load('/json/userAsset.html') ;
</script> -->
<script type="text/javascript">
var headerpath = window.location.pathname;
var selectMenu = "${selectMenu}";
var lis = $(".navbar-nav li") ;
if(headerpath.startWith("/index.html") || headerpath.startWith("/about/") || selectMenu.startWith("index")
 || headerpath.startWith("/service/") || headerpath.startWith("/question/")){
	lis.eq(0).addClass("active") ;
}
else if(headerpath.startWith("/trade/")){
	lis.eq(1).addClass("active") ;
}
else if(headerpath.startWith("/financial/")||headerpath.startWith("/account/") 
|| headerpath.startWith("/crowd/logs") || headerpath.startWith("/introl/")||headerpath.startWith("/divide/")
|| headerpath.startWith("/lottery/logs")|| headerpath.startWith("/shop/myorder")|| headerpath.startWith("/shop/address")){
	lis.eq(${fn:length(requestScope.constant['fbs'])}+2).addClass("active") ;

}
else if(headerpath.startWith("/market.html")){
	lis.eq(${fn:length(requestScope.constant['fbs'])}+3).addClass("active") ;
}
else if(headerpath.startWith("/crowd/") && !headerpath.startWith("/crowd/logs")){
	lis.eq(${fn:length(requestScope.constant['fbs'])}+4).addClass("active") ;
}
else if(selectMenu.startWith("shop")){
	lis.eq(${fn:length(requestScope.constant['fbs'])}+5).addClass("active") ;
}
else if(headerpath.startWith("/user/")){
	lis.eq(${fn:length(requestScope.constant['fbs'])}+6).addClass("active") ;
}

</script>