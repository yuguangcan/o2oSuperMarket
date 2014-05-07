require(['zepto','common','widget/cart'], function( $ ,common ,cart) {

	$(function(){
		$('.submit').click(function(){
			var pids = '',
				product = F.context('product');

			for(var i=0;i<product.length;i++){
				pids = pids + product[i].pid + "_" + product[i].cartNum + "_" + product[i].price + ",";
			}
			var data = {
				aid : F.context('aid'),
				payType : $('input[name=pay]:checked').val(),
				pids : pids
			}

			$.post('/shop/order/ordercommit',data,function(response){
				var data = JSON.parse(response);
				if(data && data.errno == 0 ){
					cart.clear();
					window.location.href="/shop/user/myorder?act=0";
				}else{
					alert('库存不足');
				}
			});
		});
	});

});
