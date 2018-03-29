<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="include.inc.jsp"%>

<div id="allFooter" class="container-full footer" style="position: static;">
	<div class="container footer-top">
		<div class="row col-xs-12 text-center">
			<div class="footer-left-top">
				<a target="_blank" href="/about/index.html?id=2">关于我们</a>
				<span class="plist">|</span>
				<a target="_blank" href="/about/index.html?id=1">使用帮助</a>
				<span class="plist">|</span>
				<a target="_blank" href="/about/index.html?id=52">上币申请</a>
				<span class="plist">|</span>
				<a target="_blank" href="/about/index.html?id=59">钱包下载</a>
				<span class="plist">|</span>
				<a target="_blank" href="/question/question.html">在线问答</a>
				<span class="plist">|</span>
				<a target="_blank" href="/about/index.html?id=53">交易总则</a>
				<span class="plist">|</span>
				<a target="_blank" href="/about/index.html?id=3">费率说明</a>
				<span class="plist">|</span>
				<a target="_blank" href="/about/index.html?id=4">用户协议</a>
				<span class="plist">|</span>
				<a target="_blank" href="/about/index.html?id=5">法律声明</a>
			</div>
			
			<div class="footer-left-con clearfix">
			    <span><a target="_blank" href="javascript:void(0)">友情链接</a></span>
				<c:forEach items="${requestScope.constant['ffriendlinks'] }" var="v">
				<span class="plist"></span>
				<span> <a href="${v.furl }" target="_blank">${v.fname }</a></span>
				</c:forEach>
			</div>
			
			<div class="footer-left-bot">
			<div style="margin-bottom: 5px;">
					<span class="text-danger">    比特币等数字货币交易具有极高的风险（预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），据国家五部委《关于防范比特币风险的通知》，金海贝币币兑换平台仅为数字货币的爱好者提供一个自由的网上交换平台，对币的投资价值不承担任何审查、担保、赔偿的责任，您需要完全对自己的投资损失承担责任，如果您不能接受，请不要进行交易！ </span>
				</div>
				<div style="margin-bottom: 10px;">
					<span>${requestScope.constant['webinfo'].fcopyRights }</span> <span class="plist">|</span>
					 <span> ${requestScope.constant['webinfo'].fbeianInfo }
					</span> <span class="plist">|</span> <span class="" style="display: inline-block; text-decoration: none; height: 20px; line-height: 20px;">
					业务合作： ${requestScope.constant['webinfo'].fsystemMail }
					</span>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="${oss_url}/static/front/js/plugin/bootstrap.js"></script>
<script type="text/javascript" src="${oss_url}/static/front/js/plugin/layer/layer.js"></script>
<script type="text/javascript" src="${oss_url}/static/front/js/comm/util.js"></script>
<script type="text/javascript" src="${oss_url}/static/front/js/comm/comm.js"></script>
<script type="text/javascript" src="${oss_url}/static/front/js/language/language_cn.js"></script>
<script type="text/javascript">
function weixin(){
var url ="https://open.weixin.qq.com/connect/qrconnect?appid=${requestScope.constant['weixinAppID']}&redirect_uri=${requestScope.constant['fulldomain']}/link/wx/callback.html&response_type=code&scope=snsapi_login#wechat_redirect";
location.href=url;
}
</script>

