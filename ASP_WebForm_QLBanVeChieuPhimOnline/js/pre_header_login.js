$(function() {
	$('.login .dropdown-user').click(function(event) {
		$('.profile-menu').toggleClass('open-profile-menu');
	});

	//Đổi mã captcha
    $('.captcha > a.pull-left').click(function(event) {
    	event.preventDefault();
        var str_src_org = String($('.captcha > img').attr('src'));
        var str_src_new = "image/capthca.png"; 
        
        if(str_src_org === str_src_new){
            $('.captcha > img').attr('src', 'image/captcha2.PNG');
            $('input#txtMaXacThuc').val('');
        } else {
            $('.captcha > img').attr('src', 'image/capthca.png');
            $('input#txtMaXacThuc').val('');
        }
    });

    //Mảng lưu tài khoản đã tạo
    var profilesArr = new Array();
    var profileArr = new Array();

	//Kiểm tra chuỗi email và mật khẩu nhập vào
    var pattLName = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    var pattPass = /^[a-z0-9_-]{6,18}$/;
    var pattCaptcha = /^\d+$/;
    var check_login = 0;

    $('.tab-login .btn1').click(function(event) {
        var txtLoginName = $('input#txtLoginName').val();
        var txtPassword = $('input#txtPassword').val();
        var txtMaXacThuc = $('.tab-login input#txtMaXacThuc').val();
        console.log(txtMaXacThuc);
        var str_src_org = String($('.tab-login .captcha > img').attr('src'));
        console.log(str_src_org);
    	var str_src_1 = "image/capthca.png";
    	var str_src_2 = "image/captcha2.PNG";
    
        if(txtLoginName == '') {
            alert("Please enter your User name!");
            $('#txtLoginName').focus();
            return false;
        }
        if(txtPassword == "") {
            alert("Please enter your Password!");
            $('#txtPassword').focus();
            return false;
        }
        if(!pattLName.test(txtLoginName)) {
            alert("Username not valiate!");
            $('#txtLoginName').focus();
            return false;
        }
        if(!pattPass.test(txtPassword)) {
            alert("Password not valiate!");
            $('#txtPassword').focus();
            return false;
        }
        if(!pattCaptcha.test(txtMaXacThuc)) {
            alert("Password not valiate!");
            $('#txtPassword').focus();
            return false;
        }
        if(str_src_org === str_src_1) {
        	if(txtMaXacThuc === "61707") {
        		if(txtLoginName == "DucSoan99@gmail.com" && txtPassword == "123456"){
		            console.log('Đăng nhập thành công');
		            $('.pre-header').attr('check-login', '1');
		            check_login = 1;
		            $('.pre-header .left').addClass('close-left');
		            $('.pre-header .login').addClass('logined');
		            $('input#txtLoginName').val('');
		            $('input#txtPassword').val('');
		            $('input#txtMaXacThuc').val('');
		            // window.close();
		            // window.open("home.html", "_self");
		        }else {
		            alert("Tài khoản hoặc mật khẩu không đúng!");
		        }
        	} else {
        		alert("Mã captcha không đúng!");
        	}
        } else if(str_src_org === str_src_2) {
        	if(txtMaXacThuc === "89981") {
        		if(txtLoginName == "DucSoan99@gmail.com" && txtPassword == "123456"){
		            console.log('Đăng nhập thành công');
		            $('.pre-header').attr('check-login', '1');
		            check_login = 1;
		            $('.pre-header .left').addClass('close-left');
		            $('.pre-header .login').addClass('logined');
		            $('input#txtLoginName').val('');
		            $('input#txtPassword').val('');
		            $('input#txtMaXacThuc').val('');
		            // window.close();
		            // window.open("home.html", "_self");
		        }else {
		            alert("Tài khoản hoặc mật khẩu không đúng!");
		        }
        	} else {
        		alert("Mã captcha không đúng!");
        	}
        }
    });

    //Kiểm tra chuỗi khi đăng ký
    var pattName = /^[a-zA-Z]+\s+/;
    var pattEmail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    var pattPass = /^[a-z0-9_-]{6,18}$/;
    var pattDate = /^\d\d-\d\d-\d\d\d\d$/;
    var pattNumber = /^0+[0-9]{9}$/;
    var pattCaptcha = /^\d+$/;
    $('.tab-register .btn1').click(function(event) {
    	var txtname = $('input#txtname').val();
        var txtEmail = $('input#txtEmail').val();
        var txtPass = $('input#txtPass').val();
        var txtRepass = $('input#txtRepass').val();
        var txtNgaySinh = $('input#txtNgaySinh').val();
        var txtDienThoai = $('input#txtDienThoai').val();
        var cboSex = String($('#cboSex option:selected').attr('value'));
        var txtMaXacThuc = $('.tab-register input#txtMaXacThuc').val();
        var chk = String($('#chk').attr('value'));
        
        var str_src_org = String($('.tab-register .captcha > img').attr('src'));
        console.log(str_src_org);
    	var str_src_1 = "image/capthca.png";
    	var str_src_2 = "image/captcha2.PNG";
    
        if(txtname == '') {
            alert("Please enter your name!");
            $('#txtname').focus();
            return false;
        }
        if(txtEmail == '') {
            alert("Please enter your email!");
            $('#txtEmail').focus();
            return false;
        }
        if(txtPass == "") {
            alert("Please enter your Password!");
            $('#txtPass').focus();
            return false;
        }
        if(txtRepass == "") {
            alert("Please enter your Re-password!");
            $('#txtRepass').focus();
            return false;
        }
        if(txtNgaySinh == "") {
            alert("Please enter your date of birth!");
            $('#txtNgaySinh').focus();
            return false;
        }
        if(cboSex !== "1" && cboSex !== "2" && cboSex !== "3") {
        	console.log(cboSex);
            alert("Please choose your sex!");
            return false;
        }
        if(txtDienThoai == "") {
            alert("Please enter your phone number!");
            $('#txtDienThoai').focus();
            return false;
        }
        if(txtMaXacThuc == "") {
            alert("Please enter captcha!");
            $('#txtMaXacThuc').focus();
            return false;
        }
        if(!pattName.test(txtname)) {
            alert("Name not valiate!");
            $('#txtname').focus();
            return false;
        }
        if(!pattEmail.test(txtEmail)) {
            alert("Email not valiate!");
            $('#txtEmail').focus();
            return false;
        }
        if(!pattPass.test(txtPass)) {
            alert("Password not valiate!");
            $('#txtPass').focus();
            return false;
        }
        if(!pattPass.test(txtRepass)) {
            alert("Re-password not valiate!");
            $('#txtRepass').focus();
            return false;
        }
        if(!pattDate.test(txtNgaySinh)) {
            alert("Date of birth not valiate!");
            $('#txtNgaySinh').focus();
            return false;
        }
        if(!pattNumber.test(txtDienThoai)) {
            alert("Phone number not valiate!");
            $('#txtDienThoai').focus();
            return false;
        }
        if(!pattCaptcha.test(txtMaXacThuc)) {
            alert("Captcha not valiate!");
            $('#txtMaXacThuc').focus();
            return false;
        }
        if(str_src_org === str_src_1) {
        	if(txtMaXacThuc !== "61707") {
        		alert("Mã captcha không đúng!");
        		return false;
        	}
        } else if(str_src_org === str_src_2) {
        	if(txtMaXacThuc !== "89981") {
        		alert("Mã captcha không đúng!");
        		return false;
        	}
        }
        $('#chk').click(function(event) {
        	$('#chk').attr('value', '1');
        	console.log('đã click checkbox');
        });
        if(chk !== '1') {
        	alert("Vui lòng chọn cam kết!");
    		return false;
        }
        if(txtPass !== txtRepass) {
        	alert("Re-password is not the same as Password");
        	return false;
        } else {
        	alert('Đăng kí thành công!');
        	$('.tab-login').css('opacity', "1");
	        $('.tab-register').css('opacity', "0");
	        $('.tab-register').css('visibility', "hidden");
	        $('.tab-login').css('visibility', "visible");
	        $("#register a").css("background","#f8f8f8");
	        $("#login a").css("background","#337ab7");
	        $("#login a").css("boder-bottom","solid 1px #555");
	        $("#login a").css("color","#000 !important");
	        $("#login a").css("background","#337ab7 !important");

	        profileArr.push(txtname);
	        profileArr.push(txtEmail);
	        profileArr.push(txtPass);
	        profileArr.push(txtNgaySinh);
	        profileArr.push(txtDienThoai);
	        profileArr.push(cboSex);

	        $('.tab-login #txtLoginName').val(txtEmail);
	        $('.tab-login #txtPassword').val(txtPass);

	        $('input#txtname').val('');
            $('input#txtEmail').val('');
            $('input#txtPass').val('');
            $('input#txtRepass').val('');
            $('input#txtNgaySinh').val('');
            $('input#txtDienThoai').val('');
            $('#cboSex option:selected').attr('value', '0');;
            $('input#txtMaXacThuc').val('');
        }
    });

	$('.logout').click(function(event) {
		$('.pre-header').attr('check-login', '0');
        $('.pre-header .left').removeClass('close-left');
        $('.pre-header .login').removeClass('logined');
	});
	$('.profile-menu li:nth-child(11)').click(function(event) {
		$('.pre-header').attr('check-login', '0');
        $('.pre-header .left').removeClass('close-left');
        $('.pre-header .login').removeClass('logined');
	});
});