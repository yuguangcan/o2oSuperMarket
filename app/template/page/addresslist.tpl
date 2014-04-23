{%*选择地址*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
选择地址
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/addresslist.css -->
<link rel="stylesheet" href="static/styles/page/addresslist.css">
<!-- endbuild -->
{%/block%}

{%*通用顶部不需要*%}
{%block name="header"%}
{%/block%}

{%block name="content"%}
    {%include file="widget/titlebar.tpl" title="选择地址"%}
    <ul class="address-list">
        <li>
            <input type="radio" name="default-address" checked="checked" id="address-1"></input>
            <label for="address-1">
                陈陈 123456789<br>北京市朝阳区三里屯soho
            </label>
        </li>
        <li>
            <input type="radio" name="default-address" id="address-2"></input>
            <label for="address-2">
                陈陈 123456789<br>北京市朝阳区三里屯soho2
            </label>
        </li>
    </ul>
    <a class="add-address" href="">
        新增收货地址
    </a>
{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/addresslist" src="/static/scripts/require.js"></script>
{%/block%}