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
						<li class=""><a href="/divide/myGivenCNY.html">分红人民币</a>
							</li>
							<li class="active"><a href="/divide/myGivenCoin.html">分红虚拟币</a>
							</li>
							
						</ul>
						
						<div class="col-xs-12 padding-clear padding-top-30">
							<table class="table table-striped">
								<tr class="bg-gary">
									<td>分红主题</td>
                                    <td>本次分红总币数</td>
									<td>我的总币数</td>
									<td>获得币数</td>
									<td>状态</td>
									<td class="text-right">分红日期</td>
								</tr>
								
									<c:forEach items="${fshareplanlogs }" var="v" >
									<tr>
										<td>${v.fshareplan.ftitle }</td>
										<td>${v.ftype }:<fmt:formatNumber value="${v.fshareplan.famount }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="6"/></td>
										<td>${v.fshareplan.fvirtualcointype.fShortName }:<fmt:formatNumber value="${v.fselfAmount}" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="6"/></td>
										<td>${v.ftype }：<fmt:formatNumber value="${v.famount }" pattern="##.##" maxIntegerDigits="15" maxFractionDigits="6"/></td>
										<td>${v.fstatus_s }
										<c:if test="${v.fstatus ==1 }">
										&nbsp;|&nbsp;<a href="javascript:takeAmt(${v.fid });" style="color:red;">领取</a>
										</c:if>
										</td>
										<td class="text-right"><fmt:formatDate value="${v.fcreatetime }" pattern="yyyy-MM-dd"/></td>
									</tr>
									</c:forEach>
								
								<c:if test="${fn:length(fshareplanlogs)==0 }">
								<tr>
										<td colspan="6" class="no-data-tips">
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
<script type="text/javascript">
	function takeAmt(id){
	
		var param={id:id};
		var url = "/json/divide/takeAmt.html";
		$.post(url, param, function(result) {
		if (result != null) {
			util.showerrortips("", result.message, {
					okbtn : function() {
						location.reload(true);
					}
			});
		}
	});
	};
</script>

</body>
</html>