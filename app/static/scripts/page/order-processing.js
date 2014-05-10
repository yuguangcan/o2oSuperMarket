require(['zepto','common','widget/orderitem'], function( $ ,common ,orderitem ) {

	$(function(){
		orderitem.init($('.orderitem-wrapper'));

		var total = F.context('total'),
			pn = 5,
			rn = 5,
			isLoading = false;
		$('.load-more').click(function(){
			if(isLoading){
				return;
			}
			isLoading = true;
			$.post('/shop/user/ordermore',{
				act : 0,
				pn : pn,
				rn : rn
			},function(response){
				if(response){
					$('.orderitem-wrapper').append(response);
					if(pn*rn >= total){
						$('.load-more').remove();
					}
					pn = pn + 5;
					isLoading = false;
				}
			});
		});
	});

});
