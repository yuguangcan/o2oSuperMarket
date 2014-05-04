{%*下订单*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
下订单
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/neworder.css -->
<link rel="stylesheet" href="static/styles/page/neworder.css">
<!-- endbuild -->
{%/block%}

{%*通用顶部不需要*%}
{%block name="header"%}
{%/block%}

{%block name="content"%}
    {%include file="widget/titlebar.tpl" title="确认下单"%}

    <a href="/shop/addresslist" class="address section">
        {%foreach $address as $item%}
            {%if $item.prio == "1"%}
            收货人：{%$item.receiver%}&nbsp;&nbsp;{%$item.phone%} <br/>
            {%$item.province%}{%$item.city%}{%$item.district%}{%$item.community%}{%$item.unit%}{%$item.doorNo%}
            
            <script>
                F.context('aid','{%$item.addressid%}');
            </script>

            {%/if%}
        {%/foreach%}
    </a>

    <ul class="product-list section">
        {%foreach $product.list as $item%}
        <li>
            <img src="{%$item.pics.pic%}" class="img"></img>
            <div class="info">
                <p class="name">{%$item.title%}</p>
                <p class="desc">{%$item.groupName%}</p>
                <p class="price">单价：￥{%$item.price%}</p>
                <p class="count">数量：{%$item.cartNum%}</p>
                <p class="total">总价：￥{%$item.price * $item.cartNum%}</p>
            </div>
        </li>
        {%/foreach%}
        <script>
            F.context('product',{%json_encode($product.list)%});
        </script>
    </ul>

    <div class="pay section">
        <input type="radio" name="pay" value="0"></input>
        <label>货到付款</label>
        <br/>
        <input type="radio" name="pay" value="1" checked="checked"></input>
        <label>微信支付</label>
    </div>

    <div class="totalprice">实付款：￥{%$product.total%}</div>

    <div class="submit">
        提交订单
    </div>

{%/block%}

{%*通用底部不需要*%}
{%block name="footer"%}
{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/neworder" src="/static/scripts/require.js"></script>
{%/block%}