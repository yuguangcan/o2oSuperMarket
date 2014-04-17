{%*商品详情页*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
商品详情
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/product.css -->
<link rel="stylesheet" href="static/styles/page/product.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    <div class="product"> 
        <img src="/static/images/goods.jpg"></img>
        <div class="name">椰树牌利乐包椰子汁245ml/包</div>
        <div class="info clearfix">
            <div class="price">
                ￥6.2<span class="old-price">￥5.2</span>
            </div>
            <div class="stock">库存：100</div>
        </div>
    </div>
    <div class="operation">
        <div class="type clearfix">
            <span data-tid="1" class="notapcolor">￥10/5个装<i><b>&radic;</b></i></span>
            <span data-tid="2" class="selected notapcolor">￥18/10个装<i><b>&radic;</b></i></span>
        </div>
        <div class="add-minus">
            <span class="minus notapcolor">-</span>
            <input type="text" value="1" id="product-count"></input>
            <span class="add notapcolor">+</span>
        </div>
        <div class="add-cart notapcolor" data-pid="5">
            <i></i>
            加入购物车
        </div>
    </div>
    <div class="product-description">
        <div class="title">商品详情</div>
        <div class="content">好喝又实惠，大家快来买啊，哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈</div>
    </div>

{%/block%}

{%block name="js"%}
<script data-main="/static/scripts/page/product" src="/static/scripts/require.js"></script>
{%/block%}