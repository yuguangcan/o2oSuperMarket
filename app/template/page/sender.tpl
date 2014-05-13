{%*送货员操作页*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
订单操作
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/sender.css -->
<link rel="stylesheet" href="static/styles/page/sender.css">
<!-- endbuild -->
{%/block%}

{%*通用顶部不需要*%}
{%block name="header"%}
{%/block%}


{%block name="content"%}
	{%*个人中心tab*%}
	<nav class="ucenter-nav">
		{%if $action=='fight'%}
		<a href="javascript:;" class="cur">抢单</a>
		<a href="/shop/user/myorder?act=0">结单</a>
		{%elseif $action=='close'%}
		<a href="/shop/order/orderfightlist">抢单</a>
		<a href="javascript:;" class="cur">结单</a>
		{%/if%}
	</nav>

    <div class="orderitem-wrapper">
    {%foreach $list as $item%}
        {%include file="widget/senderitem.tpl" item=$item%}
    {%/foreach%}
    </div>

    {%if $total > 5%}
    	<div class="load-more notapcolor">点击加载更多</div>
    	<script>
    		F.context('total','{%$total%}');
    	</script>
    {%/if%}


{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/sender" src="/static/scripts/require.js"></script>
{%/block%}