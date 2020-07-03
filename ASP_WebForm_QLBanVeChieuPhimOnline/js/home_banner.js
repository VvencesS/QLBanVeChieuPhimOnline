$(function() {
	$(window).scroll(function(event) {
		var vitri = $(window).scrollTop();
		var scroll_banner = 0;

		if(vitri == 500){
			$('.banner').addClass('scroll-banner-1');
		} else if(vitri == 700){
			$('.banner').addClass('scroll-banner-2');
		} else if(vitri == 900){
			$('.banner').addClass('scroll-banner-3');
		} else if (vitri == 1100) {
			$('.banner').addClass('scroll-banner-4');
		} else if (vitri == 1300) {
			$('.banner').addClass('scroll-banner-5');
		} else if (vitri == 1500) {
			$('.banner').addClass('scroll-banner-6');
		} else if (vitri == 1700) {
			$('.banner').addClass('scroll-banner-7');
		}

		if(vitri < 1700 && vitri > 1500){
			$('.banner').removeClass('scroll-banner-7');
		}  
		if(vitri < 1500 && vitri > 1300){
			$('.banner').removeClass('scroll-banner-6');
		}  
		if (vitri < 1300 && vitri > 1100) {
			$('.banner').removeClass('scroll-banner-5');
		}  
		if (vitri < 1100 && vitri > 900) {
			$('.banner').removeClass('scroll-banner-4');
		}  
		if (vitri < 900 && vitri > 700) {
			$('.banner').removeClass('scroll-banner-3');
		}  
		if (vitri < 700 && vitri > 500) {
			$('.banner').removeClass('scroll-banner-2');
		}  
		if (vitri < 500) {
			$('.banner').removeClass('scroll-banner-1');
		}
		
	});
	
});