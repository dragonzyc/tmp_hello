<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../comm/include.inc.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>





 



<!doctype html>
<html>
<head>
<jsp:include page="../comm/link.inc.jsp"></jsp:include>
</head>
<body>
	
<jsp:include page="../comm/header.jsp"></jsp:include>



	<div class="container-full padding-top-30">
		<div class="container displayFlex">
			<%@include file="../comm/left_menu.jsp" %>
			<div class="col-xs-10 padding-right-clear">
				<div class="col-xs-12 padding-right-clear padding-left-clear rightarea user">
					<div class="col-xs-12 rightarea-con">
						<div class="col-xs-12 padding-clear">
							<table class="table table-striped text-left">
					<tr class="bg-gary">
									<td class="text-center">
										委托时间
									</td>
									<td>
										类型
									</td>
									<td>
										数量
									</td>
									<td>
										价格
									</td>
									<td>
										金额
									</td>
									<td>
										成交量
									</td>
									<td>
										成交金额
									</td>
									<td>
										手续费
									</td>
									<td>
										平均成交价
									</td>
									<td>
										状态/操作
									</td>
								</tr>
					
									<c:if test="${fn:length(fentrusts)==0 }">
										<tr>
										<td class="no-data-tips" colspan="10">
											<span>
												暂无委托
											</span>
										</td>
									</tr>
									</c:if>
									
									<c:forEach items="${fentrusts }" var="v" varStatus="vs">
					<tr>
						<td class="gray"><fmt:formatDate value="${v.fcreateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						<td class="${v.fentrustType==0?'text-success':'text-danger' }">${v.fentrustType_s}${v.fisLimit==true?'[市价]':'' }</td>
						<td>${ftrademapping.fvirtualcointypeByFvirtualcointype2.fSymbol}<fmt:formatNumber value="${v.fcount }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="${ftrademapping.fcount2 }"/></td>
						<td>${v.ftrademapping.fvirtualcointypeByFvirtualcointype1.fSymbol}<fmt:formatNumber value="${v.fprize }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="${ftrademapping.fcount1 }"/></td>
						<td>${v.ftrademapping.fvirtualcointypeByFvirtualcointype1.fSymbol}<fmt:formatNumber value="${v.famount}" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="${ftrademapping.fcount1 }"/></td>
						<td>${ftrademapping.fvirtualcointypeByFvirtualcointype2.fSymbol}<fmt:formatNumber value="${v.fcount-v.fleftCount }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="${ftrademapping.fcount2 }"/></td>
						<td>${v.ftrademapping.fvirtualcointypeByFvirtualcointype1.fSymbol}<fmt:formatNumber value="${v.fsuccessAmount }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="${ftrademapping.fcount1 }"/></td>
						<c:choose>
						<c:when test="${v.fentrustType==0 }">
						<td>${ftrademapping.fvirtualcointypeByFvirtualcointype2.fSymbol}<fmt:formatNumber value="${v.ffees-v.fleftfees}" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="${ftrademapping.fcount1 }"/></td>
						</c:when>
						<c:otherwise>
						<td>${v.ftrademapping.fvirtualcointypeByFvirtualcointype1.fSymbol}<fmt:formatNumber value="${v.ffees-v.fleftfees}" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="${ftrademapping.fcount1 }"/></td>
						</c:otherwise>
						</c:choose>
						<td>${v.ftrademapping.fvirtualcointypeByFvirtualcointype1.fSymbol}<fmt:formatNumber value="${((v.fcount-v.fleftCount)==0)?0:  v.fsuccessAmount/((v.fcount-v.fleftCount)) }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="${ftrademapping.fcount1 }"/></td>
						<td>
						${v.fstatus_s }
						<c:if test="${v.fstatus==1 || v.fstatus==2}">
						&nbsp;|&nbsp;<a href="javascript:void(0);" class="tradecancel" data-value="${v.fid}" refresh="1">取消</a>
						</c:if>
						<c:if test="${v.fstatus==3}">
						&nbsp;|&nbsp;<a href="javascript:void(0);" class="tradelook" data-value="${v.fid}">查看</a>
						</c:if>
						</td>
                          </tr>
			</c:forEach>
			
								
							</table>
							<div class="text-right">
								${pagin}
							</div>
							
						</div>
						<input type="hidden" value="${currentPage}" id="currentPage">
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal modal-custom fade" id="entrustsdetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-mark"></div>
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close btn-modal" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<span class="modal-title" id="exampleModalLabel"></span>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	

<input type="hidden" id="symbol" value="${ftrademapping.fid }">
<jsp:include page="../comm/footer.jsp"></jsp:include>
<script type="text/javascript" src="${oss_url}/static/front/js/trade/trade.js"></script>
</body>
</html>
