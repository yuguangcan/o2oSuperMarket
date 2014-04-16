define(['zepto'], function ($) {
	var cartKey = 'cart',
		cartObj = JSON.parse(localStorage.getItem(cartKey)) || {},
		cartDom = $('#cart');

	function save(){
		localStorage.setItem(cartKey,JSON.stringfy(cartObj));
	}
	function renderCartHtml(){
		var pidCount = 0;
		for(var key in cartObj){
			if(cartObj.hasOwnProperty(key)){
				pidCount++;
			}
		}
		if(pidCount > 0){
			cartDom.find('.cart-num').html(pidCount);
			cartDom.find('.cart-num-wrapper').show();
		}else{
			cartDom.find('.cart-num-wrapper').hide();
		}
		
	}
	function resetCartHtml(){
		cartDom.find('.cart-num-wrapper').hide();
	}

	function checkCart(){
		return (cartDom && cartDom.length > 0);
	}

	return {
		init : function(){
			if(checkCart()){
				renderCartHtml();
			}
			
		},
		add : function(pid ,count){
			if(checkCart()){
				if(cartObj[pid]){
					cartObj[pid] = cartObj[pid] + count;
				}else{
					cartObj[pid] = count;
				}
				save();
				renderCartHtml();
			}
		},
		remove : function(pid){
			if(checkCart()){
				if(cartObj[pid]){
					delete cartObj[pid];
				}
				save();
				renderCartHtml();
			}
		},
		clear: function(){
			if(checkCart()){
				cartObj = {};
				save();
				resetCartHtml();
			}
		}
	};
});