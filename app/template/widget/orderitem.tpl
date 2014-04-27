{%*单个订单状态*%}

<div class="order-item" data-oid={%$item.oid%}>
	<div class="process-title">
		{%if $item.state == 1%}
			<span class="processing">送货员已经开始配送</span>
		{%elseif $item.state == 2%}
			<span class="processing">订单确认中</span>
		{%elseif $item.state == 3%}
			<span class="canceled">已取消</span>
		{%elseif $item.state == 4%}
			<div class="">
				服务态度
				<button class="rank-submit submit-btn">确定</button>
			</div>
		{%/if%}
	</div>
	<div class="info">
		<div class="title">
			<p>订单总价：￥{%item.price%}</p>
			<p>订单号：{%$item.id%}</p>
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
				{%foreach $item.product as $pitem%}
					<li>
						<a href="/shop/product/detail/{%$pitem.pid%}.html">
							<img src="{%$pitem.pics.pic%}"></img>
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