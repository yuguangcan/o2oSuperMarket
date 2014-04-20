require(['zepto','common','widget/cart'], function( $ ,common ,cart ) {

	$(function(){

		var isSelectAll = false;

		function changeSelectAll(){
			if(isSelectAll){
				$('#selectall').find('span').html('全选');
				
			}else{
				$('#selectall').find('span').html('全不选');
			}
			isSelectAll = !isSelectAll;
		}

		var totalprice = $('.total .price'),
			totalCount = $('.total .count');

		function calPriceAndCount(){
			var price = 0.00,
				count = 0;
			$('.select').each(function(index,item){
				if(item.checked){
					count++;
					var parent = $(item).parent();
					price = price + (parent.find('.current-price').html().substr(1) - 0) * parent.find('.count').val();
				}
			});
			totalprice.html('￥'+price);
			totalCount.html(count);
		}

		$('#selectall').click(function(){
			if(isSelectAll){
				$('.select').each(function(index,item){
					item.checked = false;
				});
			}else{
				$('.select').each(function(index,item){
					item.checked = true;
				});
			}
			changeSelectAll();
			calPriceAndCount();
		});

		$('.select').click(function(e){
			var selectCount = 0;
			$('.select').each(function(index,item){
				if(item.checked){
					selectCount++;
				}
			});
			if(selectCount == $('.select').length || selectCount == 0){
				changeSelectAll();
			}
			calPriceAndCount();
		});

		$('#delete').click(function(){
			$('.select').each(function(index,item){
				if(item.checked){
					cart.remove(item.value);
					$(item).parent().remove();
				}
			});
			if($('.select').length == 0){
				$('.content-wrapper').addClass('hide');
				$('.empty').removeClass('hide')
			}else{
				calPriceAndCount();
			}
			
		});

		$('.submit').click(function(){
			var cartObj = {};
			$('.select').each(function(index,item){
				if(item.checked){
					var parent = $(item).parent();
					cartObj[parent.find('.select').val()] = parent.find('.count').val(); 
				}
			});

			$.post('/shop/cartcommit',cartObj,function(response){
				
			});
		})
	});

});

