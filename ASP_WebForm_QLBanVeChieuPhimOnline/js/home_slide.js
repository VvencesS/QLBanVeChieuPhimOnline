$(function() {

	//Tự động chạy slide
	thoigian = setInterval(function(){
		$('.next').trigger('click');
		//console.log('Đã kích hoạt sự kiện click!');
	}, 3000);

	//Sự kiện click nút next
	$('.next').click(function(event) {
		//Khi click thì bỏ auto slide
		// clearInterval(thoigian);
		// console.log('Đã bị hủy');

		//Lấy phần tủ phía sau
		var nextImg = $('.active').next();

		//Xử lý nút bullet
		var vitri = $('.trang').index() + 1;
		$('.nut ul li').removeClass('trang');
		if(vitri == $('.nut ul li').length){
			vitri = 0;
		}
		$('.nut ul li:nth-child(' + (vitri + 1) + ')').addClass('trang');

		//Xử lý slide
		if(nextImg.length == 0) {
			$('.active').addClass('nextimg').one('webkitAnimationEnd', function(event) {
				$('.nextimg').removeClass('nextimg');
			});

			$('.anhslide .slide:first-child').addClass('nextimg2').one('webkitAnimationEnd', function(event) {
				//remove class active
				$('.active').removeClass('active');
				$('.nextimg2').addClass('active').removeClass('nextimg2');
			});
		}else{
			$('.active').addClass('nextimg').one('webkitAnimationEnd', function(event) {
					$('.nextimg').removeClass('nextimg');
				});
			nextImg.addClass('nextimg2').one('webkitAnimationEnd', function(event) {
				//remove class active
				$('.active').removeClass('active');
				nextImg.addClass('active').removeClass('nextimg2');
			});
		}
	}); //Kết thúc sự kiện next 

	//Sự kiện click nút prev
	$('.prev').click(function(event) {
		//Khi click thì bỏ auto slide
		// clearInterval(thoigian);
		
		var prevImg = $('.active').prev();

		//Xử lý nút bullet
		var vitri = $('.trang').index() + 1;
		$('.nut ul li').removeClass('trang');
		if(vitri == 1){
			vitri = $('.nut ul li').length + 1;
		}
		$('.nut ul li:nth-child(' + (vitri - 1) + ')').addClass('trang');

		//Xử lý slide
		if(prevImg.length == 1){
			$('.active').addClass('previmg').one('webkitAnimationEnd', function(event) {
				$('.previmg').removeClass('previmg');
			});

			prevImg.addClass('previmg2').one('webkitAnimationEnd', function(event) {
				//remove class active
				$('.active').removeClass('active');
				prevImg.addClass('active').removeClass('previmg2');
			});
		}else{
			$('.active').addClass('previmg').one('webkitAnimationEnd', function(event) {
				$('.previmg').removeClass('previmg');
			});

			$('.anhslide .slide:last-child').addClass('previmg2').one('webkitAnimationEnd', function(event) {
				//remove class active
				$('.active').removeClass('active');
				$('.previmg2').addClass('active').removeClass('previmg2');
			});
		}
	});

	//Xử lý nút bullet
	$('.nut ul li').click(function(event) {
		$('.nut ul li').removeClass('trang');
		$(this).addClass('trang');

		//Sự kiện nhấn 1 bullet
		//Cho img hiện tại biến mất
		$('.active').addClass('nextimg').one('webkitAnimationEnd', function(event) {
			$('.nextimg').removeClass('nextimg');
		});

		$('.anhslide .slide:nth-child(' + ($(this).index() + 1) + ')').addClass('nextimg2').one('webkitAnimationEnd', function(event) {
			//remove class active
			$('.active').removeClass('active');
			$('.nextimg2').addClass('active').removeClass('nextimg2');
		});
	});

});