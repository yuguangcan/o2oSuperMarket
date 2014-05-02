{%*取消的订单*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
我的订单
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/order-cancel.css -->
<link rel="stylesheet" href="static/styles/page/order-cancel.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    {%include file="widget/ucenternav.tpl" defaultindex=2%}

    {%foreach $list as $item%}
        {%include file="widget/orderitem.tpl" item=$item%}
    {%/foreach%}
    
{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/order-cancel" src="/static/scripts/require.js"></script>
{%/block%}