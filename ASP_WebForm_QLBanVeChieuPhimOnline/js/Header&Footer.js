$(document).ready(function(){
	//Fix menu khi scroll
	$(window).scroll(function(event) {
		var vitri = $(window).scrollTop();
		// console.log(vitri);
		if(vitri > 0){
			$('.pre-header').addClass('remove-pre-header');
			$('.header').addClass('fix-header');
		}else{
			$('.pre-header').removeClass('remove-pre-header');
			$('.header').removeClass('fix-header');
		}
	});

	//Fancybox chọn rạp
	$('.fancybox-container .fas.fa-times').click(function(event) {
		$('.fancybox-container').addClass('remove-fancybox');
	});
	$('.fancybox-bg').click(function(event) {
		$('.fancybox-container').addClass('remove-fancybox');
	});

	//Chọn rạp
	$('.top-cart-block > ul > li > ul > li > ul > li > a').click(function(event) {
		var text = $(this).text();
		$('.top-cart-block > ul > li > a').html(text + '<i class="fa fa-angle-down"></i>');
	});
});