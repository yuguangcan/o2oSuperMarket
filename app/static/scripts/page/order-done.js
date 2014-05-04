require(['zepto','common','widget/orderitem'], function( $ ,common ,orderitem ) {

	$(function(){
		orderitem.init($('.orderitem-wrapper'));

		var total = F.context('total'),
			pn = 2,
			rn = 5;
		$('.load-more').click(function(){
			$.post('/shop/user/ordermore',{
				act : 3,
				pn : pn,
				rn : rn
			},function(response){
				if(response){
					$('.orderitem-wrapper').append(response);
					if(pn*rn >= total){
						$('.load-more').remove();
					}
					pn = pn + 1;
				}
			});
		});

	});

});
