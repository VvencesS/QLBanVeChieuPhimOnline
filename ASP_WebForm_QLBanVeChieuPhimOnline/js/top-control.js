$(function() {
	$('#topcontrol').fadeOut(); //ẩn nút
	$(window).scroll(function(){ 
		var vitri = $(window).scrollTop();
		//console.log(vitri);
		if (vitri >= 100) { //thực hiện lệnh điều kiện Khi lăn chuột xuống dưới hơn 100px
			$('#topcontrol').fadeIn(); //Xuất hiện nút
		} else {
			$('#topcontrol').fadeOut(); //Ngược lại thì ẩn nút
		}
		
	}); 
	$('#topcontrol').click(function(){ 
		$('html, body').animate({ scrollTop: 0 }, 1000); //Animation giúp hoạt ảnh scroll ngược lên đầu trang sẽ mượt hơn
		return false; 
	});
});