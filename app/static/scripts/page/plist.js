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

		$('.product-list').on('click','.add-cart-big',function(e){
			e.stopPropagation();
			cart.add($(this).data('pid'),1,e.target);
		});

		var total = F.context('total'),
			pn = 2,
			rn = 5;
		$('.load-more').click(function(){
			$.post('/shop/user/ordermore',{
				act : 0,
				pn : pn,
				rn : rn
			},function(response){
				if(response){
					$('.product-list').append(response);
					if(pn*rn >= total){
						$('.load-more').remove();
					}
					pn = pn + 1;
				}
			});
		});

	});

});

