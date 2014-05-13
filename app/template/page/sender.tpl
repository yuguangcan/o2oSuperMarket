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

    {%foreach $list as $item%}
    	<div class="orderitem-wrapper">
        	<div class="order-item" data-oid={%$item.oid%}>
				<div class="info">
					<div class="title">
						{%if $action == 'fight'%}
						<button class="fight-submit submit-btn">
							抢单
						</button>
						{%elseif $action == 'close'%}
						<button class="close-submit cancel-btn">
							结单
						</button>
						{%/if%}

						<p>订单总价：￥{%$item.price%}</p>
						<p>订单号：{%$item.oid%}</p>
					</div>
					<div class="other">
						<p>支付方式：
							{%if $item.pay_type == 0%}
								货到付款
							{%elseif $item.pay_type == 1%}
								微信支付
							{%/if%}
						</p>
						<p><span>收货地址：</span><span class="other-info">{%$item.address%}</span></p>
						
						<p><span>下单日期：</span><span class="other-info">{%$item.create_time%}</span></p>
					</div>
					<div class="detail">
						<p>订单详情：</p>
						<ul class="product-list">
							{%foreach $item.products as $pitem%}
								<li data-pid="{%$pitem.pid%}" data-count="{%$pitem.order_buy_num%}">
									<a href="/shop/product/detail/{%$pitem.pid%}.html">
										<img src="{%$pitem.pic%}"></img>
										<div class="product-name">{%$pitem.title%}</div>
										<div class="product-count">数量：{%$pitem.order_buy_num%}</div>
										<div class="product-price">价格：{%$pitem.order_buy_num * $pitem.order_price%}</div>
									</a>
								</li>
							{%/foreach%}
						</ul>
					</div>
					<div class="more">
						查看更多<span></span>
					</div>
				</div>
			</div>
        </div>
    {%/foreach%}

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