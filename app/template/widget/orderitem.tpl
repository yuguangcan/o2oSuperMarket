{%*单个订单状态*%}

<div class="order-item" data-oid={%$item.oid%}>
	<div class="process-title">
		{%if $item.status == 0%}
			<span class="processing">等待出库</span>
		{%elseif $item.status == 1%}
			<span class="processing">等待出库</span>
		{%elseif $item.status == 2%}
			<span class="processing">送货员正在派送</span>
		{%elseif $item.status == 4%}
			<span class="canceled">已取消</span>
		{%elseif $item.status == 3%}
			<div class="">
				服务态度
				<button class="rank-submit submit-btn">确定</button>
			</div>
		{%/if%}
	</div>
	<div class="info">
		<div class="title">
			<p>订单总价：￥{%$item.price%}</p>
			<p>订单号：{%$item.oid%}</p>
		</div>
		{%if $item.state == 2%}
		<button class="process-cancel cancel-btn">
			取消订单
		</button>
		{%elseif $item.state == 3%}
		<button class="process-cancel cancel-btn">
			重新购买
		</button>
		{%/if%}
		<div class="detail">
			<p>订单详情：</p>
			<ul class="product-list">
				{%foreach $item.products as $pitem%}
					<li>
						<a href="/shop/product/detail/{%$pitem.pid%}.html">
							<img src="{%$pitem.pic%}"></img>
							<div class="product-name">{%$pitem.title%}</div>
							<div class="product-count">数量：{%$pitem.order_buy_num%}</div>
							<div class="product-count">价格：{%$pitem.order_buy_num * $pitem.order_price%}</div>
						</a>
					</li>
				{%/foreach%}
			</ul>
		</div>
		<div class="other">
			<p>支付方式：</p>
			<p>派送方式：
				{%if $item.pay_type == 0%}
					货到付款
				{%elseif $item.pay_type == 0%}
					微信支付
				{%/if%}
			</p>
			<p>收货地址：{%$item.address%}</p>
			<p>派送员：{%$item.sender_name%}</p>
			<p>下单日期：{%$item.create_time%}</p>
		</div>
		<div class="more">
			查看更多<span></span>
		</div>
	</div>
</div>