$(function(){
	$("input").click(function(e){
		$.ajax({
			type:"post",
			url:'/shop/submit/order',
			data:{
				total_fee:F.context('total_fee'),
				uid:F.context('uid')
			},
			dataType:'json',
			success:function(data){
				if(data){
					callpay(data);
				}
			},
			error:function(data){

			}
		});
	});

});
function callpay(data)
{
	WeixinJSBridge.invoke('getBrandWCPayRequest',data,function(res){
		WeixinJSBridge.log(res.err_msg);
		//alert(res.err_code+res.err_desc+res.err_msg);
	});
}