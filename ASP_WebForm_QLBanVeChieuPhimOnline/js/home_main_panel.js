$(function () {
    //Khi chọn loại phim
    $('.nav-tabs > li').click(function (event) {
        $('.text-center > .nav-tabs > .active-tab').removeClass('active-tab');
        $(this).addClass('active-tab');
        event.preventDefault();
        $(window).scrollTop(500);

        //TweenMax.staggerFrom($('.row .film'),0.4,{opacity:0}, 0.4);
    });
    //Xem trailer phim
    // $('.film-img .play-trailer .view-trailer .fas').click(function (event) {
    //     console.log("đã click play-trailer");
    //     $('.fancybox-trailer').addClass('view-fancybox-trailer');
    //     event.preventDefault();
    //     $(window).scrollTop(500);
    //     console.log("đã scroll: " + $(window).scrollTop(500));
    //     $('body').css('overflow-y', 'hidden');
    // });
    // //Tắt fancybox xem trailer
    // $('.fancybox-trailer .fas.fa-times').click(function (event) {
    //     $('.fancybox-trailer ').removeClass('view-fancybox-trailer');
    // });
    // $('.fancybox-trailer').click(function (event) {
    //     $('.fancybox-trailer ').removeClass('view-fancybox-trailer');
    // });

    //Khi click vào Mua vé
    $('.btn-mua-ve').click(function (event) {
        event.preventDefault();
        $(window).scrollTop(500);
        $('.fancybox-showtimes').addClass('open-fancybox-showtimes');
        $('body').css('overflow-y', 'hidden');
    });

    //Close fancybox-showtimes
    $('.fancybox-showtimes .fas.fa-times').click(function (event) {
        $('.fancybox-showtimes ').removeClass('open-fancybox-showtimes');
    });
    // $('.fancybox-showtimes').click(function(event) {	
    // 	$('.open-fancybox-showtimes').removeClass('open-fancybox-showtimes');
    // });

    //Chọn ngày fancybox-showtimes
    $('.dayofweek > li').click(function (event) {
        $('.dayofweek > .active-tab').removeClass('active-tab');
        $(this).addClass('active-tab');
        event.preventDefault();
        $(window).scrollTop(500);
        $('body').css('overflow-y', 'hidden');
    });

    //Chọn rạp để đặt vé
    $('.fancybox-showtimes .btn').click(function (event) {
        event.preventDefault();
        $(window).scrollTop(500);
        $('.fancybox-slide-nologin').addClass('open-fancybox-slide-nologin');
        $('.fancybox-showtimes ').removeClass('open-fancybox-showtimes');
        $('body').css('overflow-y', 'hidden');
    });
    //Close fancybox-slide-nologin
    $('.fancybox-slide-nologin .fas.fa-times').click(function (event) {
        $('.fancybox-showtimes ').removeClass('open-fancybox-slide-nologin');
        $('.fancybox-showtimes').addClass('open-fancybox-showtimes');
    });
    // $('.fancybox-slide-nologin').click(function(event) {	
    // 	$('.open-fancybox-slide-nologin').removeClass('open-fancybox-slide-nologin');
    // 	$('.fancybox-showtimes').addClass('open-fancybox-showtimes');
    // });

    //Đi tới trang Chọn ghế
    $('.fancybox-slide-nologin #btn-dat-ve').click(function (event) {
        event.preventDefault();
        window.open("chon-ghe.aspx", "_self");
    });
});