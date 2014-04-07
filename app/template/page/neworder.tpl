<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport"/>
        <meta content="telephone=no" name="format-detection"/>
        <meta content="address=no" name="format-detection"/>
        <meta name="apple-mobile-web-app-capable" content="no" />
        <title>订单确认</title>

        <!-- build:css(.tmp) /static/styles/base/reset.css -->
        <link rel="stylesheet" href="static/styles/base/reset.css">
        <!-- endbuild -->

        <!-- build:css(.tmp) /static/styles/page/order.css -->
        <link rel="stylesheet" href="static/styles/page/order.css">
        <!-- endbuild -->


    </head>
    <body>

        <div>总共： {%$total_fee%}元</div>
        <input type="button" value="提交"></input>
        <script>
            F.context('total_fee','{%$total_fee%}');
            F.context('uid','{%$uid%}');
        </script>
        

        <!-- build:js /static/scripts/zepto.js -->
        <script src="../../bower_components/zepto/zepto.js"></script>
        <!-- endbuild -->


        <!-- build:js({app,.tmp}) /static/scripts/page/order.js -->
        <script src="static/scripts/page/order.js"></script>
        <!-- endbuild -->
</body>
</html>
