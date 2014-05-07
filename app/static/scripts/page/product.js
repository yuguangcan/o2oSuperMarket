require(['zepto','common','widget/cart'], function( $ ,common ,cart ) {

	$(function(){

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

