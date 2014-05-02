require(['zepto','common','widget/cart'], function( $ ,common ,cart ) {

	$(function(){

		var productCount = $('#product-count');
		$('.operation .add-minus .add').click(function(){
			productCount.val(productCount.val()-0+1);
		});
		$('.operation .add-minus .minus').click(function(){
			productCount.val(productCount.val()-1);
		});

		$('.operation').on('click','.add-cart',function(e){
			cart.add($(this).data('pid'),productCount.val(),e.target);
		});

		$('.add-cart-small').on('click',function(e){
			cart.add($(this).data('pid'),productCount.val(),e.target);
		});

	});

});

