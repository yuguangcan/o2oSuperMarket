define(['zepto'], function ($) {
	var userIcon = $('#user'),
		userMenu = $('#uermenu');
    return {
    	init :function(){
    		userIcon.click(function(e){
    			if(e.target == userMenu.get(0) || $.contains(userMenu.get(0),e.target)){
    				return;
    			}
    			userMenu.toggleClass('show');
    		});
    		$(document.body).on('touchend',function(e){
    			if(e.target == userIcon.get(0) || e.target == userMenu.get(0) || $.contains(userMenu.get(0),e.target) || $.contains(userIcon.get(0),e.target)){
    				return;
    			}
    			if(userMenu.hasClass('show')){
    				userMenu.removeClass('show');
    			}
    		});
   	    }
	};
});
