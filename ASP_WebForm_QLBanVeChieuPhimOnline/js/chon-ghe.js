$(function() {
	//Đã login 
	$('.pre-header .left').addClass('close-left');
	$('.pre-header .login').addClass('logined');
	//tự động đổi màu blink rgb(243, 230, 192)
	setInterval(function(){
		$('.blink').toggleClass('blink-white');
	}, 1000);
	
	//Khi scroll thì div .panel-film-info translate
	$(window).scroll(function(event) {
		var vitri = $(window).scrollTop();
		if(vitri == 100) {
			$('.panel-film-info').addClass('scroll-panel-film-info-1');
		} else if(vitri == 200) {
			$('.panel-film-info').addClass('scroll-panel-film-info-2');
		} else if(vitri == 300) {
			$('.panel-film-info').addClass('scroll-panel-film-info-3');
		}

		if(vitri < 300 && vitri > 200) {
			$('.panel-film-info').removeClass('scroll-panel-film-info-3');
		} else if(vitri < 200 && vitri > 100) {
			$('.panel-film-info').removeClass('scroll-panel-film-info-2');
		} else if(vitri < 100){
			$('.panel-film-info').removeClass('scroll-panel-film-info-1');
		}
	});
	//Tự động chuyển sang trang home.html sau 9:43
	var org_time = 600;
	var new_minite = 0, new_second = 0;
	time = setInterval(function(){
		org_time--;
		if(org_time == 0) {
			clearInterval(time);
			window.close();
			window.open("home.html", "_self");
		}
		new_second = org_time%60;
		org_time -= new_second;
		new_minite = org_time/60;
		$('.time-to-left-value').html(new_minite + ':' + new_second);
		
		org_time = new_minite*60 + new_second;
	}, 1000);

	var count_normal=0, count_vip=0, count_double=0;
	var data_seat_price;
	var data_seat_name;
	var data_seat_type;
	var data_seat_name_arr = new Array();
	var data_seat_price_arr = new Array();
	var data_seat_type_arr = new Array();
	var unchoose_index, unchoose_price, unchoose_type;
	var total_money = 0;
	var status = false;
	var count_seat; //số lượng ghế đã chọn
	

	//Click chọn ghế
	$('.seat-cell').click(function(event) {
		$(this).toggleClass('seat-select');

		//Tính tổng tiền khi chọn ghế
		data_seat_price = $(this).attr('data-seat-price');
		data_seat_name = $(this).attr('data-seat-name');
		data_seat_type = $(this).attr('data-seat-type');


		for (var i = 0; i < data_seat_name_arr.length; i++) {
			if(data_seat_name === data_seat_name_arr[i]) {
				unchoose_index = i;
				status = true;
			}
		}
		if(status == false) {
			data_seat_name_arr.push(data_seat_name);
			data_seat_price_arr.push(data_seat_price);
			data_seat_type_arr.push(data_seat_type);
			console.log(data_seat_name_arr.join());
			console.log(data_seat_price_arr.join());
			console.log(data_seat_type_arr.join());

			if(data_seat_type === 'seat-normal') {
				count_normal++;
			} else if(data_seat_type === 'seat-vip') {
				count_vip++;
			} else if(data_seat_type === 'seat-double') {
				count_double++;
			}
			total_money = count_normal*45000 + count_vip*50000 + count_double*100000;

			if(count_normal > 0) {
				$('.seat-normal-quantity').html(count_normal + ' x 45000 vnđ');
			}
			if(count_vip > 0) {
				$('.seat-vip-quantity').html(count_vip + ' x 50000 vnđ');
			}
			if(count_double > 0) {
				$('.seat-double-quantity').html(count_double + ' x 100000 vnđ');
			}
			if(total_money > 0) {
				$('.total-money-value').html(total_money + ' vnđ');
			}
			$('.seat-name-selected').html(data_seat_name_arr.join());
		} else {
				console.log(unchoose_index + '-' + data_seat_name_arr[unchoose_index]);
				data_seat_name_arr.splice(unchoose_index, 1); 
			
				unchoose_price = data_seat_price_arr[unchoose_index];
				console.log(unchoose_index + '-' + data_seat_price_arr[unchoose_index]);
				data_seat_price_arr.splice(unchoose_index, 1); 
			
				unchoose_type = data_seat_type_arr[unchoose_index];
				console.log(unchoose_index + '-' + data_seat_type_arr[unchoose_index]);
				data_seat_type_arr.splice(unchoose_index, 1); 
			
			if(unchoose_type === 'seat-normal') {
				count_normal--;
				$('.seat-normal-quantity').html(count_normal + ' x 45000 vnđ');
				total_money -= 45000;
			} else if(unchoose_type === 'seat-vip') {
				count_vip--;
				$('.seat-vip-quantity').html(count_vip + ' x 50000 vnđ');
				total_money -= 50000
			} else if(unchoose_type === 'seat-double') {
				count_double--;
				$('.seat-double-quantity').html(count_double + ' x 100000 vnđ');
				total_money -= 100000;
			}
			//total_money = count_normal*45000 + count_vip*50000 + count_double*100000;
			$('.total-money-value').html(total_money + ' vnđ');
			 
			$('.seat-name-selected').html(data_seat_name_arr.join(', '));
		}
		status = false;
		count_seat = count_normal + count_vip + count_double;
	});
	
	//Sau khi chọn ghế chuyển sang trang thanh toán
	$('.panel-film-info .btn-thanh-toan').click(function(event) {
		// event.preventDefault();
		if(count_seat > 0) {
			$(window).scrollTop(0);
			$('.choose-seat-row').addClass('close-choose-seat-row');
			$('.payment-seat-row').addClass('open-payment-seat-row');
			$('.content').addClass('plus-width-content');

			$('.panel-film-info .btn-thanh-toan').css('display', 'none');
			$('.panel-film-info .btn-back').css('display', 'block');
			$('.panel-film-info .dieu-khoan-pop-up').css('display', 'block');

			//Liệt kê số lượng ghế chọn và giá tiền ticket-selected-quantity-detail
			$('.ticket-selected-quantity-detail .item-seat-normal-quantity').html(count_normal + " x 45000");
			$('.ticket-selected-quantity-detail .item-seat-normal-money').html('= ' + count_normal*45000 + ' vnđ');
			$('.ticket-selected-quantity-detail .item-seat-vip-quantity').html(count_vip + ' x 50000');
			$('.ticket-selected-quantity-detail .item-seat-vip-money').html('= ' + count_vip*50000 + ' vnđ');
			$('.ticket-selected-quantity-detail .item-seat-double-quantity').html(count_double + ' x 100000');
			$('.ticket-selected-quantity-detail .item-seat-double-money').html('= ' + count_double*100000 + ' vnđ');

			$('.item-seat-total-money').html(total_money + ' vnđ');
			$('.payment-amount').html(total_money + ' vnđ');
		} else {
			alert("Vui lòng chọn ghế!");
		}
	});

	//Chọn Combo ưu đãi

	$('.item-outer-pannel .combo-action .btn-minus').click(function(event) {
		var combo_type = $(this).attr("combo");
		var quantity = parseInt($('.' + combo_type).text());
		
		if(quantity > 0) {
			quantity--;
			console.log(quantity);
			console.log(combo_type);
			$('.' + combo_type).html(quantity);
			comboMoneyTotal();
		}

	});
	$('.item-outer-pannel .combo-action .btn-plus').click(function(event) {
		var combo_type = $(this).attr("combo");
		var quantity = parseInt($('.' + combo_type).text());
		quantity++;
		console.log(quantity);
		console.log(combo_type);
		$('.' + combo_type).html(quantity);
		comboMoneyTotal();
	});

	function comboMoneyTotal() {
		var combo_1 = parseInt($('.combo-quantity-1').text());
		var combo_2 = parseInt($('.combo-quantity-2').text());
		var combo_3 = parseInt($('.combo-quantity-3').text());
		var combo_4 = parseInt($('.combo-quantity-4').text());
		var combo_5 = parseInt($('.combo-quantity-5').text());
		var combo_6 = parseInt($('.combo-quantity-6').text());
		var combo_money_total = combo_1*105000 + combo_2*110000 + combo_3*130000 + combo_4*110000 + combo_5*130000 + combo_6*125000;
		console.log(combo_money_total);
		$('.item-seat-total-money').html((combo_money_total+total_money) + ' vnđ');
		$('.payment-amount').html((combo_money_total+total_money) + ' vnđ');
	}

	//Xem beta voucher
	$('.beta--voucher .input-voucher').click(function(event) {
		$('#voucher').toggleClass('hiden');
		$('#voucher_icon').css('transform', 'rotate(90deg)');
		$('.content').toggleClass('voucher-plus-width-content');
	});

	$('.beta--point .input-voucher').click(function(event) {
		$('#beta-point').toggleClass('hiden');
		$('#beta-point_icon').css('transform', 'rotate(90deg)');
		$('.content').toggleClass('point-plus-width-content');
	});
	
	//Quay lại
	$('.panel-film-info .btn-back').click(function(event) {
		$(window).scrollTop(0);
		$('.choose-seat-row').removeClass('close-choose-seat-row');
		$('.payment-seat-row').removeClass('open-payment-seat-row');
		$('.content').removeClass('plus-width-content');

		$('.panel-film-info .btn-thanh-toan').css('display', 'block');
		$('.panel-film-info .btn-back').css('display', 'none');
		$('.panel-film-info .dieu-khoan-pop-up').css('display', 'none');
	});

	//Tiến hành thanh toán
	$('.dieu-khoan-pop-up').click(function(event) {
		event.preventDefault();
		$(window).scrollTop(0);
		$('.fancybox--container').addClass('open-fancybox--container');
		$('body').css('overflow-y', 'hidden');
	});
	//Đóng .open-fancybox--container
	$('.fancybox--container .close i.fas.fa-times').click(function(event) {
		$('.fancybox--container').removeClass('open-fancybox--container');
	});
	// $('.fancybox-dieu-khoan-pop-up').click(function(event) {
	// 	$('.fancybox--container').removeClass('open-fancybox--container');
	// });

	$('.fancybox-dieu-khoan-pop-up .btn-thanh-toan').click(function(event) {
		event.preventDefault();
		// var chk = String($('.container-checkbox input').attr('checked'));
		// $('.container-checkbox input').click(function(event) {
		// 	event.preventDefault();
  //       	$('.container-checkbox input').attr('checked', 'checked');
  //       	console.log('đã click checkbox');
  //       });
  //       if(chk !== 'checked') {
  //       	alert("Vui lòng chọn cam kết!");
  //   		return false;
  //       }
  		alert('Đặt vé thành công!');
  		window.close();
		window.open("home.aspx", "_self");
		console.log("đã sang trang");
	});
});