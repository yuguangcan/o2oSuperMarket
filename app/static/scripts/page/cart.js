require(['zepto','common','widget/cart','widget/titlebar'], function( $ ,common ,cart ,titlebar) {

	$(function(){

		var fr_url = window.localStorage.getItem('cartFrUrl'),
			refer = document.referrer;
		if(!fr_url && refer.indexOf('shop/neworder')==-1){
			window.localStorage.setItem('cartFrUrl',refer);
			fr_url = refer;
		}
		titlebar.init(function(){
			window.location.href = fr_url;
		});

		var isSelectAll = true;

		function changeSelectAll(){
			if(isSelectAll){
				$('#selectall').next().html('全选');
				$('#selectall').get(0).checked = false;
				$('#delete').get(0).disabled = true;
				
			}else{
				$('#selectall').next().html('全不选');
				$('#selectall').get(0).checked = true;
				$('#delete').get(0).disabled = false;
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
					price = price + (parent.find('.current-price').html().substr(1) - 0) * parent.find('.product-count').val();
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
			if(selectCount == $('.select').length){
				$('#selectall').next().html('全不选');
				$('#selectall').get(0).checked = true;
				$('#delete').get(0).disabled = false;
				isSelectAll = true;
			}else if(selectCount==0){
				$('#selectall').next().html('全选');
				$('#selectall').get(0).checked = false;
				$('#delete').get(0).disabled = true;
				isSelectAll = false;
			}else{
				$('#selectall').next().html('全选');
				$('#selectall').get(0).checked = false;
				$('#delete').get(0).disabled = false;
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

		$('.product-count').on('change',function(){
			var value = $(this).val();
			if(isNaN(value) || value<0 ){
				alert('请输入购买数量');
				return;
			}
			if($(this).parents('li').find('.select').get(0).checked){
				calPriceAndCount();
			}
		});

		$('.submit').click(function(){
			var cartObj = {};
			$('.select').each(function(index,item){
				if(item.checked){
					var parent = $(item).parent();
					cartObj[parent.find('.select').val()] = parent.find('.product-count').val(); 
				}
			});
			
			$.post('/shop/cartcommit',cartObj,function(response){
				var data = JSON.parse(response);
				if(data && data.errno == 0){
					window.location.href="/shop/order/neworder?id="+data.data.toid;
				}else if(data.errno != 0){
					alert();
				}
			});
		});

		calPriceAndCount();
	});

});

