<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="comm/include.inc.jsp"%>
<form id="pagerForm" method="post"
	action="ssadmin/apitransferList.html">
	<input type="hidden" name="status" value="${param.status}"> <input
		type="hidden" name="keywords" value="${keywords}" /><input
		type="hidden" name="orderNo" value="${orderNo}" /> <input
		type="hidden" name="coinType" value="${coinType}" /><input
		type="hidden" name="fstatus" value="${fstatus}" /><input type="hidden"
		name="pageNum" value="1" /> <input type="hidden" name="numPerPage"
		value="${numPerPage}" /> <input type="hidden" name="orderField"
		value="${param.orderField}" /><input type="hidden"
		name="orderDirection" value="${param.orderDirection}" />
</form>


<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);"
		action="ssadmin/apitransferList.html" method="post">
		<div class="searchBar">

			<table class="searchContent">
				<tr>
				    <td>会员：<input type="text" name="keywords" value="${keywords}"
						size="40" /></td>
					<td>单据号：<input type="text" name="orderNo" value="${orderNo}"
						size="40" /></td>	
					<td>虚拟币类型： <select type="combox" name="coinType">
							<c:forEach items="${coinMap}" var="t">
								<c:if test="${t.key == coinType}">
									<option value="${t.key}" selected="true">${t.value}</option>
								</c:if>
								<c:if test="${t.key != coinType}">
									<option value="${t.key}">${t.value}</option>
								</c:if>
							</c:forEach>
					</select></td>
					<td>状态： <select type="combox" name="fstatus">
							<c:forEach items="${statusMap}" var="s">
								<c:if test="${s.key == fstatus}">
									<option value="${s.key}" selected="true">${s.value}</option>
								</c:if>
								<c:if test="${s.key != fstatus}">
									<option value="${s.key}">${s.value}</option>
								</c:if>
							</c:forEach>
					</select></td>
					<td>类型： <select type="combox" name="ftype">
							<c:forEach items="${typeMap}" var="s">
								<c:if test="${s.key == ftype}">
									<option value="${s.key}" selected="true">${s.value}</option>
								</c:if>
								<c:if test="${s.key != ftype}">
									<option value="${s.key}">${s.value}</option>
								</c:if>
							</c:forEach>
					</select></td>
					
				</tr>
			</table>
			<div class="subBar">
				<ul>
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">查询</button>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
				<li><a class="delete"
					href="ssadmin/cancelApitransfer.html?uid={sid_user}"
					target="ajaxTodo" title="确定要取消吗?"><span>取消</span> </a>
				</li>
				<li><a class="add"
					href="ssadmin/auditApitransfer.html?uid={sid_user}"
					target="ajaxTodo" title="确定要审核吗?"><span>审核</span> </a>
				</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
			    <th width="20">序号</th>
			    <th width="60">应用名称</th>
				<th width="60">虚拟币类型</th>
			    <th width="60">会员UID</th>
				<th width="60">会员登陆名</th>
				<th width="60">会员昵称</th>
				<th width="60">会员真实姓名</th>
				<th width="60">类型</th>
				<th width="60">状态</th>
				<th width="60">数量</th>
				<th width="60">第三方系统单据号</th>
				<th width="60">创建时间</th>
				<th width="60">最后修改时间</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${apitransferList}" var="api"
				varStatus="num">
				<tr target="sid_user" rel="${api.fid}">
				    <td>${num.index +1}</td>
					<td>${api.fapiname.fname}</td>
					<td>${api.fvirtualcointype.fname}</td>
					<td>${api.fuser.fid}</td>
					<td>${api.fuser.floginName}</td>
					<td>${api.fuser.fnickName}</td>
					<td>${api.fuser.frealName}</td>
					<td>${api.ftype_s}</td>
					<td>${api.fstatus_s}</td>
					<td><fmt:formatNumber value="${api.fqty}" pattern="##.##" maxIntegerDigits="16" maxFractionDigits="6" /></td>
					<td>${api.forderno}</td>
					<td>${api.fcreatetime}</td>
					<td>${api.flastupdatetime}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div class="panelBar">
		<div class="pages">
			<span>总共: ${totalCount}条</span>
		</div>
		<div class="pagination" targetType="navTab" totalCount="${totalCount}"
			numPerPage="${numPerPage}" pageNumShown="5"
			currentPage="${currentPage}"></div>
	</div>
</div>
