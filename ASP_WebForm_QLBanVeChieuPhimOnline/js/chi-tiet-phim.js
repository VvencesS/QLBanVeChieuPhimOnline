$('.lich > ul > li').click(function(event) {
		event.preventDefault();
		$('.active-lich').removeClass('active-lich');
		$(this).addClass('active-lich');
	});