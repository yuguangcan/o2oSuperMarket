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
        {%foreach $address as $item%}
            <li>
                <a href="/shop/address?addressid={%$item.addressid%}">
                    <div class="address-info">
                        {%$item.receiver%}&nbsp;&nbsp;{%$item.phone%}<br>
                        {%$item.province%}{%$item.city%}{%$item.district%}{%$item.community%}{%$item.unit%}{%$item.detail%}
                    </div>
                    {%if $item.prio == "1"%}
                        <span class="prio"></span>
                    {%/if%}
                </a>
            </li>
        {%/foreach%}
    </ul>
    <a class="add-address" href="/shop/address?edit=0">
        新增收货地址
    </a>
{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/addresslist" src="/static/scripts/require.js"></script>
{%/block%}