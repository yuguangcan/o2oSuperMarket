{%*个人中心tab*%}
<nav class="ucenter-nav">
	{%if $defaultindex==1%}
	<a href="javascript:;" class="cur">处理中</a>
	{%else%}
	<a href="/shop/order/">处理中</a>
	{%/if%}
	{%if $defaultindex==2%}
	<a href="javascript:;"  class="cur">已取消</a>
	{%else%}
	<a href="/shop/">已取消</a>
	{%/if%}
	{%if $defaultindex==3%}
	<a href="javascript:;" class="cur">已完成</a>
	{%else%}
	<a href="/shop/">已完成</a>
	{%/if%}
</nav>