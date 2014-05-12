require(['zepto','common'], function( $ ,common  ) {

	$(function(){
		var isSubmmiting = false;
		$('.orderitem-wrapper').on('click','.more',function(){
			var self = $(this);
			var moreproduct = self.parent().find('.product-list'),
				detail = self.parent().find('.detail');
			if(self.attr('open') == 1){
				moreproduct.css('height',140);
				detail.hide();
				self.attr('open',0);
				self.html('查看更多<span></span').removeClass('expand');
			}else{
				moreproduct.css('height','auto');
				detail.show();
				self.attr('open',1);
				self.html('收起<span></span').addClass('expand');
			}
		}).on('click','.get-submit',function(){
			if(isSubmmiting){
				return;
			}
			isSubmmiting = true;
   			$.post('/shop/order/ordercancel',{
   				oid:$(this).parents('.order-item').data('oid')
   			},function(response){
   				var data = JSON.parse(response);
   				isSubmmiting = false;
   				if(data && data.errno == 0){
   					alert('抢单成功'); 
            		      					
   				}else{
   					alert('抢单失败');
   				}
   			});

   		}).on('click','.close-submit',function(){
   			if(isSubmmiting){
				return;
			}
			isSubmmiting = true;
   			$.post('/shop/order/ordercancel',{
   				oid:$(this).parents('.order-item').data('oid')
   			},function(response){
   				var data = JSON.parse(response);
   				isSubmmiting = false;
   				if(data && data.errno == 0){
   					alert('结单成功'); 
            		      					
   				}else{
   					alert('结单失败，请稍后再试');
   				}
   			});

   		});


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
				pn : pn,
				rn : rn
			},function(response){
				if(response){
					$('.orderitem-wrapper').append(response);
					pn = pn + rn;
					isLoading = false;
					if(pn >= total){
						$('.load-more').remove();
					}
				}
			});
		});


	});

});
