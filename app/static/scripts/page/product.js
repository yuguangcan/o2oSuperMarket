require(['zepto','common','widget/cart','widget/titlebar'], function( $ ,common ,cart ,titlebar) {

	$(function(){
		
		var fr_url = window.localStorage.getItem('productFrUrl'),
			refer = document.referrer;
		if(!fr_url && refer.indexOf('shop/cart')==-1){
			window.localStorage.setItem('productFrUrl',refer);
			fr_url = refer;
		}
		titlebar.init(function(){
			if(!fr_url){
				window.location.href="/shop/home";
			}else{
				window.location.href = fr_url;
			}
			
		});

		var productCount = $('#product-count');
		$('.operation .add-minus .add').click(function(){
			if((productCount.val()-0+1) > (productCount.attr('max')-0)){
				return;
			}
			productCount.val(productCount.val()-0+1);
		});
		$('.operation .add-minus .minus').click(function(){
			if( productCount.val()-1 == 0){
				return;
			}
			productCount.val(productCount.val()-1);
		});

		$('.add-cart').on('click',function(e){
			if(isNaN(productCount.val()) || productCount.val()-0 < 0){
				return "请输入购买数量";
			}
			if(productCount.val()-0 > productCount.attr('max')){
				alert('库存不足');
				return;
			}
			cart.add($(this).data('pid'),parseInt(productCount.val()),e.target);
		});

		$('.add-cart-small').on('click',function(e){
			cart.add($(this).data('pid'),parseInt(productCount.val()),e.target);
		});

	});

});

