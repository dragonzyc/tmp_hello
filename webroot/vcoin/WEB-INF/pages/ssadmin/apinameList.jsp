<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="comm/include.inc.jsp"%>
<form id="pagerForm" method="post" action="ssadmin/apinameList.html">
	<input type="hidden" name="status" value="${param.status}"> <input
		type="hidden" name="keywords" value="${keywords}" /> <input
		type="hidden" name="pageNum" value="${currentPage}" /> <input
		type="hidden" name="numPerPage" value="${numPerPage}" /> <input
		type="hidden" name="orderField" value="${param.orderField}" /><input
		type="hidden" name="orderDirection" value="${param.orderDirection}" />
</form>


<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);"
		action="ssadmin/apinameList.html" method="post">
		<div class="searchBar">

			<table class="searchContent">
				<tr>
					<td>应用名称：<input type="text" name="keywords" value="${keywords}"
						size="60" /></td>
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
			<li><a class="add"
				href="ssadmin/goApinameJSP.html?url=ssadmin/addApiname" height="200"
				width="900" target="dialog" rel="addApiname"><span>新增</span> </a>
			</li>
			<li><a class="delete"
				href="ssadmin/deleteApiname.html?uid={sid_user}" target="ajaxTodo"
				title="确定要删除吗?"><span>删除</span> </a>
			</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="20">FID</th>
				<th width="60">应用名称</th>
				<th width="60">应用密钥</th>
				<th width="60">创建时间</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${apinameList}" var="apiname" varStatus="num">
				<tr target="sid_user" rel="${apiname.fid}">
					<td>${apiname.fid}</td>
					<td>${apiname.fname}</td>
					<td>${apiname.fkey}</td>
					<td>${apiname.fcreatetime}</td>
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
