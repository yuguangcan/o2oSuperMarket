
define(['zepto','widget/header','widget/usericon','widget/cart'], function( $ ,header ,usericon ,cart ) {
	$(function(){
		header.init();
		usericon.init();
		cart.init();
	});
	
	return {};
});

