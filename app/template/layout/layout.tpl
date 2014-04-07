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
        {%include file="widget/header.tpl"%}

        {%block name="content"%}
        {%/block%}

        {%include file="widget/footer.tpl"%}

        {%block name="js"%}{%/block%}

    </body>
</html>
