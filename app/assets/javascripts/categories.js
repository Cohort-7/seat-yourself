function categories_list () {
	$( "div.tooltip-js")
		.mouseenter(function() {
			var food = $(this).find('img:first').attr("alt");
			var url = $(this).find('a').attr("href");
			console.log(url);
			$('<a class="tooltip" href="'+url+'"></a>')
				.text(food)
				.appendTo($(this))
				.slideDown(100)
				.effect( "bounce", { times: 3, distance: 8 }, 400 );
		}).mouseleave(function() {
      $('.tooltip').slideUp(100, function() {
      	$(this).remove();
      })
		});
};
// /////////
