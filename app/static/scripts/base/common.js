
define(['zepto','widget/header','widget/cart'], function( $ ,header ,cart) {
	$(function(){
		header.init();
		cart.init();
	});
	
	return {};
});

