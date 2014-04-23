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

    <div class="address section">
        收货人：帅哥 18888888888<br/>北京市
    </div>

    <ul class="product-list section">
        {%foreach $cart as $item%}
        <li>
            <img src="{%$item.pics.pic%}" class="img"></img>
            <div class="info">
                <p class="name">{%$item.title%}</p>
                <p class="desc">{%$item.desc%}</p>
                <p class="price">单价：￥{%$item.price%}</p>
                <p class="count">数量：{%$item.count%}</p>
                <p class="total">总价：￥{%$item.totalprice%}</p>
            </div>
        </li>
        {%/foreach%}
    </ul>

    <div class="pay section">
        <input type="radio" name="pay" value="1" checked="checked"></input>
        <label>货到付款</label>
        <input type="radio" name="pay" value="1" checked="checked"></input>
        <label>微信支付</label>
    </div>

    <div class="totalprice">实付款：￥{%$totalprice%}</div>

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