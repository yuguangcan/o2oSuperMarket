require(['zepto','base/common','swipe'], function( $ ,common,Swipe ) {
	$(function(){

		function Nav(option){
			this.nav = $(option.nav);
			this.navlist = this.nav.find('li');
			this.callback = option.callback;
			this.lastIndex = option.defaultIndex || 0;
			this.navToIndex(this.lastIndex);
			this._bindEvent();
		}
		Nav.prototype = {
			navToIndex : function(index){
				if(this.navlist.eq(index).hasClass('cur')){
					return;
				}
				if(index>=0 && index < this.navlist.length){
					this._setCssToIndex(index);
					this._scrollIntoView(index);
					this.lastIndex = index;
				}
			},
			_setCssToIndex : function(index){
				this.navlist.eq(this.lastIndex).removeClass('cur');
				this.navlist.eq(index).addClass('cur');
			},
			_scrollIntoView : function(index){
				var current = this.navlist.eq(index),
					currentOffset = current.offset(),
					scrollParent = current.parent().parent(),
					parentOffset = current.parent().offset();

				var windowWidth = document.body.scrollWidth;

				if(currentOffset.width + currentOffset.left > windowWidth ){
					scrollParent.scrollLeft(currentOffset.left);
				}else if(currentOffset.left <= 0 ){
					scrollParent.scrollLeft(-parentOffset.left+currentOffset.left);
				}

			},
			_bindEvent : function(){
				var _self = this;
				this.navlist.on('click',function(){
					_self.navToIndex($.inArray(this,_self.navlist));
					if(typeof(_self.callback) === 'function'){
						_self.callback(_self.lastIndex);
					}
				});
			}

		};

		var categoryNav = new Nav({
			nav : $('.category ul'),
			callback : function(index){
				categorySwipe.slide(index,250);
			},
			defaultIndex : 0
		});

		var categorySwipe = new Swipe(document.getElementById('category-slider'), {		
			callback: function(index, elem) {},
			transitionEnd: function(index, elem) {
				categoryNav.navToIndex(index);
			}
		});



		$('#nav-category').click(function(){
			$('.category-panel').toggle();
		});
		var navCategoryList = $('.navbar .category-list li'),
			navSubCategoryList = $('.navbar .sub-category-list ul'),
			index = 0;
		navCategoryList.click(function(){
			if($(this).hasClass('cur')){
				return;
			}
			index = $.inArray(this,navCategoryList);
			navCategoryList.filter('.cur').removeClass('cur');
			$(this).addClass('cur');
			navSubCategoryList.filter('.cur').removeClass('cur');
			navSubCategoryList.eq(index).addClass('cur');
		});
		
	});
});
