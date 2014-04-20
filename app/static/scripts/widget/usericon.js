define(['zepto'], function ($) {
	var userIcon = $('#user'),
		userMenu = $('#uermenu');
    return {
    	init :function(){
    		userIcon.click(function(){
    			userMenu.toggleClass('show');
    		});
   	    }
	};
});
