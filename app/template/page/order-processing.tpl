{%*个人中心*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
我的订单
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/order-processing.css -->
<link rel="stylesheet" href="static/styles/page/order-processing.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    {%include file="widget/ucenternav.tpl" defaultindex=1%}

    {%foreach $oderlist as $item%}
        {%include file="widget/orderitem.tpl" item=$item%}
    {%/if%}
    
{%/block%}

{%block name="js"%}
<script data-main="/static/scripts/page/order-processing" src="/static/scripts/require.js"></script>
{%/block%}