<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.Home.HomeLoadControl" %>
<link href="CSS/home_slide.css" rel="stylesheet" />
<link href="CSS/banner.css" rel="stylesheet" />
<script src="js/home_banner.js"></script>
<script src="js/home_slide.js"></script>
<script src="js/home_main_panel.js"></script>

<div class="content">

    <div class="slide-panel">
        <div class="beta">
            <div class="anhslide">
                <div class="slide active">
                    <img src="image/slide1.jpg" alt="" style="width: 100%"></div>
                <div class="slide">
                    <img src="image/slide2.jpg" alt="" style="width: 100%"></div>
                <div class="slide">
                    <img src="image/slide3.jpg" alt="" style="width: 100%"></div>
            </div>
            <div class="nut">
                <div class="next"><i class="fas fa-chevron-right"></i></div>
                <div class="prev"><i class="fas fa-chevron-left"></i></div>
                <ul>
                    <li class="trang">1</li>
                    <li>2</li>
                    <li>3</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="main-panel">
        <div class="banner-l banner">
            <a href="#">
                <img src="image/banner-l.jpg" alt="">
            </a>
        </div>
        <div class="banner-r banner">
            <a href="#">
                <img src="image/banner-r.jpg" alt="">
            </a>
        </div>

        <div class="container">
            <div class="text-center">
                <ul class="nav-tabs">
                    <li>
                        <a href="#" id="phimsapchieu">
                            <h1>PHIM SẮP CHIẾU</h1>
                        </a>
                    </li>
                    <li class="active-tab">
                        <a href="#" id="phimdangchieu">
                            <h1>PHIM ĐANG CHIẾU</h1>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="suatchieudacbiet">
                            <h1>SUẤT CHIẾU ĐẶC BIỆT</h1>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="tab-content">
                <div class="row">
                    <div class="film">
                        <div class="film-img">
                            <div class="img">
                                <img src="image/anhphim3.jpg" alt=""></div>
                            <span style="position: absolute; top: 10px; left: 10px">
                                <img src="image/c-18.png" alt="">
                            </span>
                            <div class="play-trailer">
                                <a href="" class="view-trailer">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                            <div class="sticker-new"></div>
                        </div>
                        <div class="film-detail">
                            <div class="film-info">
                                <h3 class="film-name">
                                    <a href="">Mắt Biếc
                                    </a>
                                </h3>
                                <ul class="info">
                                    <li>
                                        <span class="bold">Thể loại:</span> Tình cảm
                                    </li>
                                    <li>
                                        <span class="bold">Thời lượng:</span> 117 phút
                                    </li>
                                </ul>

                            </div>

                            <div class="text-center">
                                <a href="#" class="btn-mua-ve">
                                    <span>
                                        <i class="fas fa-ticket-alt"></i>
                                        MUA VÉ
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film">
                        <div class="film-img">
                            <div class="img">
                                <img src="image/anhphim1.jpg" alt=""></div>
                            <span style="position: absolute; top: 10px; left: 10px">
                                <img src="image/c-13.png" alt="">
                            </span>
                            <div class="play-trailer">
                                <a href="#" class="view-trailer">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                            <div class="sticker-new"></div>
                        </div>
                        <div class="film-detail">
                            <div class="film-info">
                                <h3 class="film-name">
                                    <a href="">Trò Chơi Kì Ảo: Thăng Cấp
                                    </a>
                                </h3>
                                <ul class="info">
                                    <li>
                                        <span class="bold">Thể loại:</span> Hành động, hài hước
                                    </li>
                                    <li>
                                        <span class="bold">Thời lượng:</span> 123 phút
                                    </li>
                                </ul>

                            </div>

                            <div class="text-center">
                                <a href="#" class="btn-mua-ve">
                                    <span>
                                        <i class="fas fa-ticket-alt"></i>
                                        MUA VÉ
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film">
                        <div class="film-img">
                            <div class="img">
                                <img src="image/anhphim2.jpg" alt=""></div>
                            <span style="position: absolute; top: 10px; left: 10px">
                                <img src="image/c-16.png" alt="">
                            </span>
                            <div class="play-trailer">
                                <a href="" class="view-trailer">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                            <div class="sticker-new"></div>
                        </div>
                        <div class="film-detail">
                            <div class="film-info">
                                <h3 class="film-name">
                                    <a href="chi-tiet-phim.aspx">Chị Chị Em Em
                                    </a>
                                </h3>
                                <ul class="info">
                                    <li>
                                        <span class="bold">Thể loại:</span> Tâm lý
                                    </li>
                                    <li>
                                        <span class="bold">Thời lượng:</span> 104 phút
                                    </li>
                                </ul>

                            </div>

                            <div class="text-center">
                                <a href="#" class="btn-mua-ve">
                                    <span>
                                        <i class="fas fa-ticket-alt"></i>
                                        MUA VÉ
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="film">
                        <div class="film-img">
                            <div class="img">
                                <img src="image/anhphim4.jpg" alt=""></div>
                            <span style="position: absolute; top: 10px; left: 10px">
                                <img src="image/c-13.png" alt="">
                            </span>
                            <div class="play-trailer">
                                <a href="" class="view-trailer">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                            <div class="sticker-new"></div>
                        </div>
                        <div class="film-detail">
                            <div class="film-info">
                                <h3 class="film-name">
                                    <a href="">Giáng Sinh Đen
                                    </a>
                                </h3>
                                <ul class="info">
                                    <li>
                                        <span class="bold">Thể loại:</span> Hồi hộp, kinh dị
                                    </li>
                                    <li>
                                        <span class="bold">Thời lượng:</span> 99 phút
                                    </li>
                                </ul>

                            </div>

                            <div class="text-center">
                                <a href="#" class="btn-mua-ve">
                                    <span>
                                        <i class="fas fa-ticket-alt"></i>
                                        MUA VÉ
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="film">
                        <div class="film-img">
                            <div class="img">
                                <img src="image/anhphim5.jpg" alt=""></div>
                            <span style="position: absolute; top: 10px; left: 10px">
                                <img src="image/c-16.png" alt="">
                            </span>
                            <div class="play-trailer">
                                <a href="" class="view-trailer">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                            <div class="sticker-new"></div>
                        </div>
                        <div class="film-detail">
                            <div class="film-info">
                                <h3 class="film-name">
                                    <a href="">Anh Trai Yêu Quái
                                    </a>
                                </h3>
                                <ul class="info">
                                    <li>
                                        <span class="bold">Thể loại:</span> Gia đình, Hài, Tâm lý
                                    </li>
                                    <li>
                                        <span class="bold">Thời lượng:</span> 109 phút
                                    </li>
                                </ul>

                            </div>

                            <div class="text-center">
                                <a href="#" class="btn-mua-ve">
                                    <span>
                                        <i class="fas fa-ticket-alt"></i>
                                        MUA VÉ
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film">
                        <div class="film-img">
                            <div class="img">
                                <img src="image/anhphim6.jpg" alt=""></div>
                            <span style="position: absolute; top: 10px; left: 10px">
                                <img src="image/c-13.png" alt="">
                            </span>
                            <div class="play-trailer">
                                <a href="" class="view-trailer">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                            <div class="sticker-new"></div>
                        </div>
                        <div class="film-detail">
                            <div class="film-info">
                                <h3 class="film-name">
                                    <a href="">Giáng Sinh Năm Ấy
                                    </a>
                                </h3>
                                <ul class="info">
                                    <li>
                                        <span class="bold">Thể loại:</span> Hài, Tâm Lý, Tình cảm
                                    </li>
                                    <li>
                                        <span class="bold">Thời lượng:</span> 113 phút
                                    </li>
                                </ul>

                            </div>

                            <div class="text-center">
                                <a href="#" class="btn-mua-ve">
                                    <span>
                                        <i class="fas fa-ticket-alt"></i>
                                        MUA VÉ
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film">
                        <div class="film-img">
                            <div class="img">
                                <img src="image/anhphim7.png" alt=""></div>
                            <span style="position: absolute; top: 10px; left: 10px">
                                <img src="image/c-18.png" alt="">
                            </span>
                            <div class="play-trailer">
                                <a href="" class="view-trailer">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                            <div class="sticker-new"></div>
                        </div>
                        <div class="film-detail">
                            <div class="film-info">
                                <h3 class="film-name">
                                    <a href="">Kẻ Du Hành Trên Mây
                                    </a>
                                </h3>
                                <ul class="info">
                                    <li>
                                        <span class="bold">Thể loại:</span> Hành Động, Hồi hộp, Phiêu Lưu
                                    </li>
                                    <li>
                                        <span class="bold">Thời lượng:</span> 103 phút
                                    </li>
                                </ul>

                            </div>

                            <div class="text-center">
                                <a href="#" class="btn-mua-ve">
                                    <span>
                                        <i class="fas fa-ticket-alt"></i>
                                        MUA VÉ
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film">
                        <div class="film-img">
                            <div class="img">
                                <img src="image/anhphim8.png" alt=""></div>
                            <span style="position: absolute; top: 10px; left: 10px">
                                <img src="image/c-13.png" alt="">
                            </span>
                            <div class="play-trailer">
                                <a href="" class="view-trailer">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                            <div class="sticker-new"></div>
                        </div>
                        <div class="film-detail">
                            <div class="film-info">
                                <h3 class="film-name">
                                    <a href="">Khủng Long Ăn Chay
                                    </a>
                                </h3>
                                <ul class="info">
                                    <li>
                                        <span class="bold">Thể loại:</span> Hoạt hình
                                    </li>
                                    <li>
                                        <span class="bold">Thời lượng:</span> 97 phút
                                    </li>
                                </ul>

                            </div>

                            <div class="text-center">
                                <a href="#" class="btn-mua-ve">
                                    <span>
                                        <i class="fas fa-ticket-alt"></i>
                                        MUA VÉ
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</div>
