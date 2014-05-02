{%*右上角用户图标*%}
<div id="user" class="icon-user notapcolor">
	<div id="uermenu" class="user-menu">
		<ul>
			<li><a href="javascript:;">{%$user.uname%}</a></li>
			<li><a href="javascript:;">积分：{%$user.score%}</a></li>
			<li><a href="/shop/user/myorder?act=0">我的订单</a></li>
			<li><a href="/shop/addresslist">{%$user.receiver%} {%$user.phone%}<br/>{%$user.address%}</a></li>
		</ul>
		<div class="arrow"></div>
	</div>
</div>
