$(function() {
	$(window).scroll(function(event) {
		var vitri = $(window).scrollTop();
		console.log(vitri);

		if(vitri == 100){
			$('.banner').addClass('scroll-banner-8');
		} else if(vitri == 200){
			$('.banner').addClass('scroll-banner-9');
		} else if(vitri == 300){
			$('.banner').addClass('scroll-banner-10');
		} else if (vitri == 400) {
			$('.banner').addClass('scroll-banner-11');
		} else if (vitri == 500) {
			$('.banner').addClass('scroll-banner-12');
		} else if (vitri == 600) {
			$('.banner').addClass('scroll-banner-13');
		} else if (vitri == 700) {
			$('.banner').addClass('scroll-banner-14');
		} else if (vitri == 800) {
			$('.banner').addClass('scroll-banner-15');
		} else if (vitri == 900) {
			$('.banner').addClass('scroll-banner-16');
		}

		if(vitri < 900 && vitri > 800){
			$('.banner').removeClass('scroll-banner-16');
		}  
		if(vitri < 800 && vitri > 700){
			$('.banner').removeClass('scroll-banner-15');
		}  
		if(vitri < 700 && vitri > 600){
			$('.banner').removeClass('scroll-banner-14');
		}  
		if (vitri < 600 && vitri > 500) {
			$('.banner').removeClass('scroll-banner-13');
		}  
		if (vitri < 500 && vitri > 400) {
			$('.banner').removeClass('scroll-banner-12');
		}  
		if (vitri < 400 && vitri > 300) {
			$('.banner').removeClass('scroll-banner-11');
		}  
		if (vitri < 300 && vitri > 200) {
			$('.banner').removeClass('scroll-banner-10');
		}  
		if (vitri < 200 && vitri > 100) {
			$('.banner').removeClass('scroll-banner-9');
		}
		if (vitri < 100) {
			$('.banner').removeClass('scroll-banner-8');
		}
		
	});
	
});