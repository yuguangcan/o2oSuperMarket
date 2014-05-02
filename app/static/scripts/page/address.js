require(['zepto','common'], function( $ ,common ) {

	$(function(){

		$('.submit').click(function(){
			if($('#city').val() == -1){
				return;
			}
			var data = {
				addressid : $(this).parent().data("aid"),
				act : !$(this).parent().data("aid") ? 0 :1,
				receiver: $('#receiver').val(),
				phone:$('#phone').val(),
				detail:$('#detail').val(),
				prio: $('#set-default').get(0).checked ? 1 : 0,
				city:$('#city').val(),
				district:$('#district').val(),
				community:$('#community').val(),
				unit:$('#unit').val()
			};

			$.post('/shop/addresscommit',data,function(response){
				var data = JSON.parse(response);
				if(data && data.errno == 0){
					window.location.href = "/shop/addresslist";
				}else{
					alert();
				}
			})
		});

		$('.delete').click(function(){
			$.post('/shop/addresscommit',{addressid:$(this).parent().data("aid"),act:2},function(response){
				var data = JSON.parse(response);
				if(data && data.errno == 0){
					window.location.href = "/shop/addresslist";
				}else{
					alert();
				}
			})

		});
		var city = $('#city'),
			district = $('#district'),
			community = $('#community'),
			unit = $('#unit');
		city.on('change',function(){
			if($(this).val() == -1){
				district.empty();
				community.empty();
				unit.empty();
				return;
			}
			$.get('/shop/community?city='+$(this).val(),function(response){
				var data = JSON.parse(response);
				if(data && data.data){
					district.empty();
					for(var i =0;i<data.data.length;i++){
						district.append("<option value='"+data.data[i].district+"'>"+data.data[i].district+"</option>");
					}
					district.change();
				}
			});
		});
		district.on('change',function(){
			$.get('/shop/community?district='+$(this).val(),function(response){
				var data = JSON.parse(response);
				if(data && data.data){
					community.empty();
					for(var i =0;i<data.data.length;i++){
						community.append("<option value='"+data.data[i].community+"'>"+data.data[i].community+"</option>");
					}
					community.change();
				}
				
			});
		});
		community.on('change',function(){
			$.get('/shop/community?community='+$(this).val(),function(response){
				var data = JSON.parse(response);
				if(data && data.data){
					unit.empty();
					for(var i =0;i<data.data.length;i++){
						unit.append("<option value='"+data.data[i].unit+"'>"+data.data[i].unit+"</option>");
					}
				}
			});
		});


	});

});
