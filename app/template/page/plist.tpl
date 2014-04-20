{%*商品列表页*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
商品列表
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/plist.css -->
<link rel="stylesheet" href="static/styles/page/plist.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}

	<div class="navbar">
        <ul class="nav-list">
            <li id="nav-category" class="notapcolor">{%$currentcategory.cname%}<span></span></li>
            <li class="notapcolor">{%$currentsort.sname%}<span></span></li>
            <li class="notapcolor">只看自营<span></span></li>
        </ul>
        <div class="category-panel">
            <ul class="category-list">
                {%foreach $category as $item%}
                    {%if $item.cid == $currentcategory.pcid%}
                    <li class="notapcolor cur">
                    {%else%}
                    <li class="notapcolor">
                    {%/if%}
                    {%$item.cname%}
                    <span></span>
                    </li>
                {%/foreach%}
            </ul>
            <div class="sub-category-list">
                {%foreach $category as $itemarr%}
                    {%if $itemarr.cid == $currentcategory.pcid%}
                    <ul class="cur">
                    {%else%}
                    <ul>
                    {%/if%}
                        {%foreach $itemarr.child as $item%}
                            <li>
                                <a href="/shop/product/plist/{%$item.cid%}.html?sort={%$currentsort.sid%}" class="clearfix">
                                    {%$item.cname%}
                                </a>
                            </li>
                        {%/foreach%}
                    </ul>
                {%/foreach%}
            </div>
        </div>
    </div>

	<ul class="product-list">
		{%foreach $productlist as $item%}
		<li class="clearfix">
			<a href="/shop/product/detail/{%$item.pid%}.html">
				<img class="img" src="{%$item.pics.pic%}"></img>
				<div class="info">
					<div class="name">{%$item.title%}</div>
					<div class="price-label-big">
						{%if $item.discount%}
						￥{%$item.discount%}
	                    <span class="old-price">￥{%$item.price%}</span>
	                    {%else%}
	                    ￥{%$item.price%}
	                    {%/if%}
					</div>
					<div class="sales">最近30天卖出{%$item.sales%}件</div>
				</div>
			</a>
			<div class="add-cart-big" data-pid="{%$item.pid%}">
				<i></i>
			</div>
			{%if $item.isnew%}
			<div class="new-tag">
				<i></i>
				<span>NEW</span>
			</div>
			{%/if%}
		</li>
		{%/foreach%}
	</ul>
{%/block%}

{%block name="js"%}
<script data-main="/static/scripts/page/plist" src="/static/scripts/require.js"></script>
{%/block%}