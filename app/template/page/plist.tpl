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
            <li id="nav-category" class="notapcolor">饮用水<span></span></li>
            <li class="notapcolor">默认排序<span></span></li>
            <li class="notapcolor">只看自营<span></span></li>
        </ul>
        <div class="category-panel">
            <ul class="category-list">
                {%foreach $data as $item%}
                    {%if $item@index==0%}
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
                {%foreach $data as $itemarr%}
                    {%if $itemarr@index==0%}
                    <ul class="cur">
                    {%else%}
                    <ul>
                    {%/if%}
                        {%foreach $itemarr.child as $item%}
                            <li>
                                <a href="" class="clearfix">
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
		<li class="clearfix">
			<img class="img" src="/static/images/goods.jpg"></img>
			<div class="info">
				<div class="name">农夫山泉天然矿泉水6瓶装</div>
				<div class="price">￥6.2<span class="old-price">￥5.2</span></div>
			</div>
			<div class="add-cart" data-pid="1">
				<i></i>
			</div>
			<div class="new-tag">
				<i></i>
				<span>NEW</span>
			</div>
		</li>
		<li class="clearfix">
			<img class="img" src="/static/images/goods.jpg"></img>
			<div class="info">
				<div class="name">农夫山泉天然矿泉水6瓶装</div>
				<div class="price">￥6.2<span class="old-price">￥5.2</span></div>
			</div>
			<div class="add-cart notapcolor" data-pid="2">
				<i></i>
			</div>
			<div class="new-tag">
				<i></i>
				<span>NEW</span>
			</div>
		</li>
		<li class="clearfix">
			<img class="img" src="/static/images/goods.jpg"></img>
			<div class="info">
				<div class="name">农夫山泉天然矿泉水6瓶装</div>
				<div class="price">￥6.2<span class="old-price">￥5.2</span></div>
			</div>
			<div class="add-cart notapcolor" data-pid="3">
				<i></i>
			</div>
			<div class="new-tag">
				<i></i>
				<span>NEW</span>
			</div>
		</li>
		<li class="clearfix">
			<img class="img" src="/static/images/goods.jpg"></img>
			<div class="info">
				<div class="name">农夫山泉天然矿泉水6瓶装</div>
				<div class="price">￥6.2<span class="old-price">￥5.2</span></div>
			</div>
			<div class="add-cart notapcolor" data-pid="4">
				<i></i>
			</div>
		</li>

		

	</ul>
{%/block%}

{%block name="js"%}
<script data-main="/static/scripts/page/plist" src="/static/scripts/require.js"></script>
{%/block%}