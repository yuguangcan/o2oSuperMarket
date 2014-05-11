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
            {%if $word %}
                <li class="notapcolor">关于“{%$word%}”的商品</li>
            {%else%}
                <li id="nav-category" class="notapcolor">{%$currentcategory.cname%}<span></span></li>
            {%/if%}
            
            <li id="nav-sort" class="notapcolor">{%$currentsort.sname%}排序<span></span></li>
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
        <div class="order-panel">
            {%foreach $sortlist as $item%}
                {%if $item.sid != $currentsort.sid%}
                    {%if $word %}
                        <a href="/shop/search?word={%$word%}&sort={%$item.sid%}">
                            {%$item.sname%}排序
                        </a>
                    {%else%}
                        <a href="/shop/product/plist/{%$currentcategory.cid%}.html?sort={%$item.sid%}">
                            {%$item.sname%}排序
                        </a>
                    {%/if%}
                {%/if%}
            {%/foreach%}
        </div>
    </div>

    {%if $productlist|count > 0%}
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
    				<i class="icon-add-cart-big"></i>
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
        {%if $total > 10%}
            <div class="load-more notapcolor">点击加载更多</div>
            <script>
                F.context('total','{%$total%}');
                F.context('cid','{%$currentcategory.cid%}');
                F.context('sort','{%$currentsort.sid%}');
                F.context('word','{%$word%}');
            </script>
        {%/if%}

    {%/if%}

    
    {%if $productlist|count > 0%}
    <div class="empty hide">
    {%else%}
    <div class="empty">
    {%/if%}
        没有相关商品
        <a href="/shop/home">看看其他商品</a>
    </div>

{%/block%}

{%block name="js"%}
<script data-main="/static/scripts/page/plist" src="/static/scripts/require.js"></script>
{%/block%}