
(function (window, undefined) {

    console.log(1);

    require(['zepto','test'], function( $ ,test ) {
		$(function(){
			console.log(2);
		});
		test.do();
	});


}(this));