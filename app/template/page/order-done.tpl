{%*已完成订单*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
我的订单
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/order-done.css -->
<link rel="stylesheet" href="static/styles/page/order-done.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    {%include file="widget/ucenternav.tpl" defaultindex=3%}

    {%foreach $oderlist as $item%}
        {%include file="widget/orderitem.tpl" item=$item%}
    {%/if%}
    
{%/block%}

{%block name="js"%}
<script data-main="/static/scripts/page/order-done" src="/static/scripts/require.js"></script>
{%/block%}