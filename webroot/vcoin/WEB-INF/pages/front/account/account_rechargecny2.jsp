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

<link rel="stylesheet" href="${oss_url}/static/front/css/finance/recharge.css" type="text/css"></link>
</head>
<body>
	




 
 <%@include file="../comm/header.jsp" %>

	<div class="container-full padding-top-30">
		<div class="container displayFlex">
			
<%@include file="../comm/left_menu.jsp" %>

			<div class="col-xs-10 padding-right-clear">
				<div class="col-xs-12 padding-right-clear padding-left-clear rightarea recharge">
					<div class="col-xs-12 rightarea-con">
						<ul class="nav nav-tabs rightarea-tabs">
							<li class="active">
								<a href="/account/rechargeCny.html?type=1">人民币充值</a>
							</li>
							<c:forEach items="${requestScope.constant['allRechargeCoins'] }" var="v">
								<li class="${v.fid==symbol?'active':'' }">
									<a href="/account/rechargeBtc.html?symbol=${v.fid }">${v.fShortName } 充值</a>
								</li>
							</c:forEach>
							
						</ul>
						<div class="col-xs-12 padding-clear padding-top-30">
							<span class="recharge-type">
								<a href="/account/rechargeCny.html?type=3">
									<span class="type-icon"></span>
									<span class="type">支付宝转账</span>
								</a>
							</span>
							<!-- <span class="recharge-type">
								<a href="/account/rechargeCny.html?type=4">
									<span class="type-icon wechat"></span>
									<span class="type">微信转账</span>
								</a>
							</span> -->
							<span class="recharge-type">
								<a href="/account/rechargeCny.html?type=0">
									<span class="type-icon bank"></span>
									<span class="type">银行卡转账</span>
								</a>
							</span>
							<!-- <span class="recharge-type active">
								<a href="/account/rechargeCny.html?type=2">
									<span class="type-icon onlinebank"></span>
									<span class="type">网银直充</span>
									<span class="type-ok"></span>
									<span class="realtime"></span>
								</a>
							</span> -->
						</div>
						<div class="col-xs-12 padding-clear padding-top-30">
							<div class="recharge-box clearfix padding-top-30">
								<div class="col-xs-12 padding-clear ">
									<div id="rechage1" class="col-xs-8 padding-clear form-horizontal">
										<div class="form-group online">
											<label for="diyMoney" class="col-xs-2 control-label">充值金额</label>
											<div class="col-xs-6">
												<input id="diyMoney" class="form-control" type="text">
											</div>
										</div>
										<div class="form-group">
											<label class="col-xs-2 control-label">到账时间</label>
											<div class="col-xs-6">
												<span class="form-control border-f9f">实时到账</span>
											</div>
										</div>
										<!-- <div class="form-group">
											<label class="col-xs-2 control-label">手续费</label>
											<div class="col-xs-6">
												<span class="form-control border-f9f">
													<span id="ffee">0</span>
													CNY
												</span>
											</div>
										</div> -->
										<div class="form-group">
											<label class="col-xs-2 control-label">实际到账</label>
											<div class="col-xs-6">
												<span class="form-control text-danger border-f9f">
													<span id="realamount">0</span>
													CNY
												</span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-xs-2 control-label">选择银行</label>
											<div class="col-xs-10">
												<input id="bankid" type="hidden" value="0" />
											</div>
										</div>
									</div>
									<div class="col-xs-4 padding-clear text-center">
										<a target="_blank"  href="/about/index.html?id=44" class="recharge-help"> </a>
									</div>
									<div id="" class="col-xs-12 padding-clear form-horizontal">
										<div class="form-group">
											<label class="col-xs-1 control-label"></label>
											<div class="col-xs-11" style="padding-left: 40px;">
												<input id="bankid" type="hidden" value="0" />
												
													<i class="bank-item bank-icbc" data-fid="34">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-abc" data-fid="33">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-boc" data-fid="32">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-ccb" data-fid="31">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-comm" data-fid="30">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-cmb" data-fid="29">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-ceb" data-fid="28">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-hxb" data-fid="27">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-cmsb" data-fid="26">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-spdb" data-fid="25">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-cgb" data-fid="24">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-cncb" data-fid="23">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-bjb" data-fid="22">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-pab" data-fid="21">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-psbc" data-fid="20">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-shb" data-fid="19">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-cib" data-fid="18">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-bea" data-fid="15">
														<span class="bank-item-checked"></span>
													</i>
												
													<i class="bank-item bank-nbcb" data-fid="14">
														<span class="bank-item-checked"></span>
													</i>
												
											</div>
										</div>
									</div>
									<div id="" class="col-xs-8 padding-clear form-horizontal">
										<div class="form-group">
											<label class="col-xs-2 control-label"></label>
											<div class="col-xs-10">
												<span id="errortips" class="text-danger"></span>
											</div>
										</div>
										<div class="form-group">
											<label for="rechargebtn" class="col-xs-2 control-label"></label>
											<div class="col-xs-6">
												<a id="rechargeonlinebtn" href="javascript:void(0)" class="btn btn-danger btn-block" target="_blank">确定充值</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-12 padding-clear padding-top-30">
								<div class="panel panel-tips">
									<div class="panel-header text-center text-danger">
										<span class="panel-title">充值须知</span>
									</div>
									<div class="panel-body">
										<p>&lt 充值即时到账，目前支持多家银行在线充值服务。</p>
										<p>&lt 目前仅支持 100.0元以上汇款, 100.0元以下汇款不予处理。</p>
										<p>&lt 根据监管部门反洗钱规定，可能会要求您提供身份证明、资金来源证明等材料。</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 padding-clear padding-top-30">
								<div class="panel border">
									<div class="panel-heading">
										<span class="text-danger">人民币充值记录</span>
										<span class="pull-right recordtitle" data-type="0" data-value="0">收起 -</span>
									</div>
									<div  id="recordbody0" class="panel-body">
										<table class="table">
											<tr>
												<td>订单号</td>
												<td>充值时间</td>
												<td>充值方式</td>
												<td>充值金额(￥)</td>
												<td>状态</td>
												<td>操作</td>
											</tr>
											
											
												<tr>
													<td align="center" colspan="6" class="no-data-tips">
														<span>
															您暂时没有充值数据
														</span>
													</td>
												</tr>
											
										</table>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" value="2" name="type" id="finType"></input>
	<input id="minRecharge" value="100.0" type="hidden">
	<input type="hidden" value="0" name="type" id="desc"></input>
	



<%@include file="../comm/footer.jsp" %>	

	<script type="text/javascript" src="${oss_url}/static/front/js/finance/account.recharge.js"></script>
</body>
</html>
