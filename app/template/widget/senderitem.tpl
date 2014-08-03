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
							<div class="product-price">单价：{%$pitem.order_price%}</div>
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