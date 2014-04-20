define(['zepto','widget/cart'], function ($ ,cart) {
    return {
    	init :function(){
    		$('#navback').click(function(){
    			cart.toCartPage();
    		});
   	    }
	};
});
