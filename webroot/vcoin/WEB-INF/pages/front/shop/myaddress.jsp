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
								<i class="address-apply-header-line left"></i>收货地址<i class="address-apply-header-line right"></i>
							</span>
						</div>
						<div class="col-xs-12 padding-clear padding-top-30">
							<div class="address-apply-content form-horizontal">
									
										<div id="prov_city" class="form-group ">
											<label for="prov" class="col-xs-2 control-label">收货地址</label>
											<div class="col-xs-8 ">
												<div class="col-xs-4 padding-right-clear padding-left-clear margin-bottom-15">
													<select id="prov" class="form-control">
													</select>
												</div>
												<div class="col-xs-4 padding-right-clear margin-bottom-15">
													<select id="city" class="form-control">
													</select>
												</div>
												<div class="col-xs-4 padding-right-clear margin-bottom-15">
													<select id="dist" class="form-control prov">
													</select>
												</div>
												<div class="col-xs-12 padding-right-clear padding-left-clear">
													<input id="address" class="form-control" type="text" placeholder="请输入您的详细地址"/>
												</div>
											</div>
										</div>
										<div class="form-group ">
											<label for="postalcode" class="col-xs-2 control-label">邮政编码</label>
											<div class="col-xs-4">
												<input id="postalcode" class="form-control" type="text">
											</div>
										</div>
										<div class="form-group ">
											<label for="recName" class="col-xs-2 control-label">收货人姓名</label>
											<div class="col-xs-4">
												<input id="recName" class="form-control" type="text">
											</div>
										</div>
										<div class="form-group ">
											<label for="phone" class="col-xs-2 control-label">手机号码</label>
											<div class="col-xs-4">
												<input id="phone" class="form-control" type="text">
											</div>
										</div>
										
										<div class="form-group ">
											<label for="addressbtn" class="col-xs-2 control-label"></label>
											<div class="col-xs-4">
												<button id="addressbtn" class="btn btn-danger btn-xs-6" onclick="javascript:addGoodsaddress();">提交</button>
											</div>
										</div>
									
							</div>
							
						</div>
	 	 	
						<div class="col-xs-12 padding-clear padding-top-30">
							<div class="panel border">
								<div class="panel-heading">
										<span class="text-danger">收货地址</span>
										<span class="pull-right recordtitle" data-type="0" data-value="0">收起 -</span>
									</div>
								<div  id="recordbody0" class="panel-body">
									<table class="table">
										<tr>
											<td>收货人</td>
											<td>收货地址</td>
											<td>邮政编码</td>
											<td>手机号码</td>
											<td>操作</td>
										</tr>
										<c:forEach items="${address }" var="v" varStatus="vs">
											<tr>
											    <td width="200">${v.frecName }</td>
												<td width="350">${v.fprovince }${v.fcity }${v.fdist }${v.fdesc }</td>
												<td width="100">${v.postalcode }</td>
												<td width="100">${v.fphone }</td>
												<td width="100"><a href="javascript:deleteAddress(${v.fid });" class="opa-link">删除</a></td>
											</tr>
										</c:forEach>
										<c:if test="${fn:length(address)==0 }">
											<tr>
												<td align="center" colspan="5">
													<span class="no-data-tips">
														您暂时没有收货地址
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
	<script type="text/javascript" src="${oss_url}/static/front/js/finance/city.min.js"></script>
	<script type="text/javascript" src="${oss_url}/static/front/js/finance/jquery.cityselect.js"></script>
	<script type="text/javascript" src="${oss_url}/static/front/js/shop/address.js"></script>
</body>
</html>