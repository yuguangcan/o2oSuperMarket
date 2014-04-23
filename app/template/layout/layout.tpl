<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport"/>
        <meta content="telephone=no" name="format-detection"/>
        <meta content="address=no" name="format-detection"/>
        <meta name="apple-mobile-web-app-capable" content="no" />
        <title>
            {%block name="title"%}掌心超市{%/block%}
        </title>

        <!-- build:css(.tmp) /static/styles/base/common.css -->
        <link rel="stylesheet" href="static/styles/base/common.css">
        <!-- endbuild -->


        {%block name="css"%}
        {%/block%}

        <!-- build:js({app,.tmp}) /static/scripts/base/context.js -->
        <script src="static/scripts/base/context.js"></script>
        <!-- endbuild -->

    </head>
    <body>
        {%block name="header"%}
            {%include file="widget/header.tpl"%}
        {%/block%}

        {%block name="content"%}
        {%/block%}

        {%block name="footer"%}
            {%include file="widget/footer.tpl"%}
        {%/block%}

        {%*购物车图标*%}
        {%block name="cart"%}
            <div id="cart" class="cart-wrapper">
                <div class="cart"><i></i></div>
                <div class="cart-num-wrapper cart-num-box">
                    <div class="cart-num"></div>
                </div>
            </div>
            <div class="float-cart-num-wrapper cart-num-box" animated="0">
                <div class="cart-num">1</div>
            </div>
        {%/block%}
        
        {%block name="js"%}{%/block%}

    </body>
</html>
