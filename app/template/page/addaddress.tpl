{%*添加地址*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
添加收货地址
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/addaddress.css -->
<link rel="stylesheet" href="static/styles/page/addaddress.css">
<!-- endbuild -->
{%/block%}

{%*通用顶部不需要*%}
{%block name="header"%}
{%/block%}

{%block name="content"%}
    {%include file="widget/titlebar.tpl" title="添加收货地址"%}

    <form>
    	<div class="address-input">
    		<label>收货人：</label>
    		<input name="name" type="text"></input>
    	</div>
    	<div class="address-input">
    		<label>手机号：</label>
    		<input name="name" type="text"></input>
    	</div>
    	<div class="select">
    		<label>地址：</label>
    		<select id="province"></select>
    		<select id="city"></select>
			<select id="country"></select>
    	</div>
    	<div class="address-input">
    		<label>详细地址：</label>
    		<input name="name" type="text"></input>
    	</div>

    </form>

{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/addaddress" src="/static/scripts/require.js"></script>
{%/block%}