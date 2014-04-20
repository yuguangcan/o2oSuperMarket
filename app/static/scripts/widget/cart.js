define(['zepto'], function ($) {
	var cartKey = 'cart',
		cartObj = JSON.parse(localStorage.getItem(cartKey)) || {},
		cartDom = $('#cart');

	cartDom.click(function(){
		toCartPage();
	});

	function save(){
		localStorage.setItem(cartKey,JSON.stringify(cartObj));
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

	function toCartPage(){
		var param = [];
		for(var key in cartObj){
			if(cartObj.hasOwnProperty(key)){
				param.push(key + "=" + cartObj[key]);
			}
		}
		window.location.href = "/shop/cart?"+param.join('&');
	}

	return {
		init : function(){
			checkCart() && renderCartHtml();			
		},
		add : function(pid ,count){
			if(pid){
				if(cartObj[pid]){
					cartObj[pid] = cartObj[pid] + count;
				}else{
					cartObj[pid] = count;
				}
				save();
				checkCart() && renderCartHtml();
			}
		},
		remove : function(pid){
			if(pid){
				if(cartObj[pid]){
					delete cartObj[pid];
				}
				save();
				checkCart() && renderCartHtml();
			}
		},
		clear: function(){
			
			cartObj = {};
			save();
			checkCart() && renderCartHtml();
			
		},
		toCartPage: function(){
			return toCartPage();
		}
	};
});