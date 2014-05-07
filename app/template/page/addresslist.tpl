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
                {%if $item.prio == "1"%}
                <input type="checkbox" class="button-checkbox" checked="true"/>
                {%else%}
                <input type="checkbox" class="button-checkbox"/>
                {%/if%}
                <a href="/shop/address?addressid={%$item.addressid%}">
                    <div class="address-info">
                        {%$item.receiver%}&nbsp;&nbsp;{%$item.phone%}<br>
                        {%$item.city%}&nbsp;&nbsp;{%$item.district%}&nbsp;&nbsp;{%$item.community%}&nbsp;&nbsp;{%$item.unit%}&nbsp;&nbsp;{%$item.detail%}
                    </div>
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