<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="comm/include.inc.jsp"%>
<h2 class="contentTitle">添加虚拟币类型信息</h2>


<div class="pageContent">

	<form method="post" action="ssadmin/saveVirtualCoinType.html"
		class="pageForm required-validate" enctype="multipart/form-data"
		onsubmit="return iframeCallback(this, dialogAjaxDone);">
		<div class="pageFormContent nowrap" layoutH="97">
			<dl>
				<dt>图标链接：</dt>
				<dd>
					<input type="file" class="inputStyle" value="" name="filedata"
						id="filedata" />
				</dd>
			</dl>
			<dl>
				<dt>币种名称：</dt>
				<dd>
					<input type="text" name="fname" class="required"
						size="70" />
				</dd>
			</dl>
			<dl>
				<dt>币种简称：</dt>
				<dd>
					<input type="text" name="fShortName"
						class="required" size="70" />
				</dd>
			</dl>
			<dl>
				<dt>符号：</dt>
				<dd>
					<input type="text" name="fSymbol" maxlength="1" class="required"
						size="40" />
				</dd>
			</dl>
			<dl>
				<dt>ACCESS_KEY：</dt>
				<dd>
					<input type="password" name="faccess_key"
						class="required" size="70" />
				</dd>
			</dl>
			<dl>
				<dt>SECRT_KEY：</dt>
				<dd>
					<input type="password" name="fsecrt_key"
						class="required" size="70" />
				</dd>
			</dl>
			<dl>
				<dt>IP地址：</dt>
				<dd>
					<input type="text" name="fip" class="required"
						size="70" />
				</dd>
			</dl>
			<dl>
				<dt>端口号：</dt>
				<dd>
					<input type="text" name="fport"
						class="required number" size="30" />
				</dd>
			</dl>
			<dl>
				<dt>是否可以充值：</dt>
				<dd>
					<input type="checkbox" name="fisrecharge" checked='1' />
				</dd>
			</dl>
			<dl>
				<dt>是否可以提现：</dt>
				<dd>
					<input type="checkbox" name="FIsWithDraw" checked='1' />
				</dd>
			</dl>
			<dl>
				<dt>充值是否自动到账：</dt>
				<dd>
					<input type="checkbox" name="fisauto" checked='1' />
				</dd>
			</dl>
			<dl>
				<dt>是否智能合约：</dt>
				<dd>
					<input type="checkbox" name="fisother" />
				</dd>
			</dl>
			<dl>
				<dt>合约主地址：</dt>
				<dd>
					<input type="text" name="faddress"
						size="70" />
				</dd>
			</dl>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">保存</button>
						</div>
					</div></li>
				<li><div class="button">
						<div class="buttonContent">
							<button type="button" class="close">取消</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>

</div>


<script type="text/javascript">
function customvalidXxx(element){
	if ($(element).val() == "xxx") return false;
	return true;
}
</script>
