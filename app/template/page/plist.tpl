{%*商品列表页*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
首页
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/plist.css -->
<link rel="stylesheet" href="static/styles/page/plist.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
<img src="/static/images/index_bg.jpg"></img>
{%/block%}

{%block name="js"%}
<script data-main="/static/scripts/page/plist" src="/static/scripts/require.js"></script>
{%/block%}