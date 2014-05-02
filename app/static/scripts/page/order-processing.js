require(['zepto','common'], function( $ ,common ) {

	$(function(){
		$('.more').click(function(){
			var self = $(this);
			var moreproduct = self.parent().find('.product-list'),
				other = self.parent().find('.other');
			if(self.attr('open') == 1){
				moreproduct.css('height',140);
				other.hide();
				self.attr('open',0);
				self.html('查看更多<span></span').removeClass('expand');
			}else{
				moreproduct.css('height','auto');
				other.show();
				self.attr('open',1);
				self.html('收起<span></span').addClass('expand');
			}
		});
	});

});
