{%*正在处理的订单*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
我的订单
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/order-processing.css -->
<link rel="stylesheet" href="static/styles/page/order-processing.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    {%include file="widget/ucenternav.tpl" defaultindex=1%}

    {%foreach $list as $item%}
    	<div class="orderitem-wrapper">
        	{%include file="widget/orderitem.tpl" item=$item%}
        </div>
    {%/foreach%}
    
    {%if $total > 5%}
    	<div class="load-more notapcolor">点击加载更多</div>
    	<script>
    		F.context('total','{%$toatl%}');
    	</script>
    {%/if%}

{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/order-processing" src="/static/scripts/require.js"></script>
{%/block%}