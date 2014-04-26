{%*添加地址*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
添加收货地址
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/address.css -->
<link rel="stylesheet" href="static/styles/page/address.css">
<!-- endbuild -->
{%/block%}

{%*通用顶部不需要*%}
{%block name="header"%}
{%/block%}

{%block name="content"%}
    {%include file="widget/titlebar.tpl" title="添加收货地址"%}

    <form>
    	<div class="address-input">
    		<label>收货人</label>
    		<input name="recerver" type="text" value="{%$receiver%}"></input>
    	</div>
    	<div class="address-input">
    		<label>手机号</label>
    		<input name="phone" type="telephone" value="{%$phone%}"></input>
    	</div>
    	<div class="address-input">
    		<label>城市</label>
            <div class="select-wrap">
        		<select id="city">
                    {%if $city%}
                        <option value="{%$city%}">{%$city%}</option>
                    {%/if%}
                </select>
            </div>
    	</div>
        <div class="address-input">
            <label>区域</label>
            <div class="select-wrap">
                <select id="district">
                    {%if $city%}
                        <option value="{%$district%}">{%$district%}</option>
                    {%/if%}
                </select>
            </div>
        </div>
        <div class="address-input">
            <label>小区</label>
            <div class="select-wrap">
                <select id="community">
                    {%if $community%}
                        <option value="{%$community%}">{%$community%}</option>
                    {%/if%}
                </select>
            </div>
        </div>
        <div class="address-input">
            <label>幢/座/楼</label>
            <div class="select-wrap">
                <select id="unit">
                    {%if $unit%}
                        <option value="{%$unit%}">{%$unit%}</option>
                    {%/if%}
                </select>
            </div>
        </div>
    	<div class="address-detail">
    		<label>详细地址</label>
    		<textarea name="name" value="{%$detail%}"></textarea>
    	</div>
        <div class="address-set-default">
            {%if $prio == '1'%}
                <input id="set-default" class="set-default" type="checkbox" checked="checked"></input>
            {%else%}
                <input id="set-default" class="set-default" type="checkbox"></input>
            {%/if%}
                <label for="set-default">设置为默认地址</label>
        </div>
        <div class="submit-btn">
            <button class="submit">确认</button>
            {%if $receiver%}
            <button class="delete">删除</button>
            {%/if%}
        </div>

    </form>

{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/address" src="/static/scripts/require.js"></script>
{%/block%}