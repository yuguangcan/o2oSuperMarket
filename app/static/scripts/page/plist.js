require(['zepto','common','widget/cart'], function( $ ,common ,cart ) {

	$(function(){
		$('#nav-category').click(function(){
			$('.category-panel').toggle();
		});
		var navCategoryList = $('.navbar .category-list li'),
			navSubCategoryList = $('.navbar .sub-category-list ul'),
			index = 0;
		navCategoryList.click(function(){
			if($(this).hasClass('cur')){
				return;
			}
			index = $.inArray(this,navCategoryList);
			navCategoryList.filter('.cur').removeClass('cur');
			$(this).addClass('cur');
			navSubCategoryList.filter('.cur').removeClass('cur');
			navSubCategoryList.eq(index).addClass('cur');
		});

		$('.product-list').on('click','.add-cart',function(e){
			cart.add($(this).data('pid'),1);
		});
	});

});

