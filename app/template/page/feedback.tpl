{%*反馈页*%}

{%extends file="layout/layout.tpl"%} 

{%block name="title"%}
反馈
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/styles/page/feedback.css -->
<link rel="stylesheet" href="static/styles/page/feedback.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    <p class="feedback-info">请告诉我们您的建议和意见<br/>让我们为您带来更好的服务</p>
    <div class="feedback-content-wrapper">
	    <textarea class="feedback-content"></textarea>
	</div>
    <button class="submit">提交反馈</button>

{%/block%}

{%*gotop不需要*%}
{%block name="gotop"%}
{%/block%}

{%*购物车图标不需要*%}
{%block name="cart"%}
{%/block%}


{%block name="js"%}
<script data-main="/static/scripts/page/feedback" src="/static/scripts/require.js"></script>
{%/block%}