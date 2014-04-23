define(['zepto'], function ($) {
    return {
    	init :function(){
    		$('#navback').click(function(){
    			window.history.go(-1);
    		});
   	    }
	};
});
