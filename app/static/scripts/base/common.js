
define(['zepto','widget/header','widget/usericon','widget/cart','widget/titlebar'], function( $ ,header ,usericon ,cart ,titlebar) {
	$(function(){
		header.init();
		usericon.init();
		cart.init();
		titlebar.init();
	});
	
	return {};
});

