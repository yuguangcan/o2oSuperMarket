require(['zepto','common','widget/address'], function( $ ,common ,address) {

	$(function(){
		address.init('province','city','country');
	});

});
