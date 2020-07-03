<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.Default" %>

<%@ Register Src="~/cms/display/DisplayLoadControl.ascx" TagPrefix="uc1" TagName="DisplayLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Beta Cineplex</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="css/Header&Footer.css"/>
    <link rel="stylesheet" href="css/pre_header_login.css"/>
    <link rel="stylesheet" href="css/home_main_panel.css"/>
    <link href="css/fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet"/>

    <script src="js/jquery-1.12.3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.0.4/gsap.min.js"></script>
    <script src="js/Header&Footer.js"></script>
    <script src="js/pre_header_login.js"></script>
    <script src="js/top-control.js"></script>
</head>
<body class="corporate">
    <form id="form1" runat="server">
        <div>
            <div class="destop-panel">

                <!-- Begin header-panel -->
                <div class="header-panel">

                    <!-- Begin pre-header -->
                    <div class="pre-header">
                        <div class="container">
                            <div class="right">
                                <a href="#">
                                    <img src="image/united-kingdom.png" alt=""/>
                                </a>
                            </div>

                            <ul class="left" style="margin-bottom: 4px; margin-top: 4px">
                                <li><a href="Default.aspx?modul=QLTaiKhoan&submodul=DNDK&thirdmodul=DangNhap">Đăng nhập</a></li>
                                <li style="border-left: 1px solid; padding-left: 10px !important">
                                    <a href="Default.aspx?modul=QLTaiKhoan&submodul=DNDK&thirdmodul=DangKy">Đăng ký</a>
                                </li>
                            </ul>

                            <!-- Login -->
                            <ul class="login">
                                <li class="dropdown-user">
                                    <a href="Default.aspx?modul=QLTaiKhoan&submodul=ThongTinTK" style="padding: 2px; background-color: transparent;">
                                        <span class="username">Xin chào: Trần Đức Soạn </span>
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul class="dropdown-menu profile-menu">
                                        <li>
                                            <a href="Default.aspx?modul=QLTaiKhoan&submodul=ThongTinTK&thirdmodul=ThongTinTk">
                                                <i class="far fa-user"></i>Thông tin tài khoản</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">
                                                <i class="far fa-gem"></i>Thẻ thành viên</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="Default.aspx?modul=QLTaiKhoan&submodul=ThongTinTK&thirdmodul=HanhTrinhDienAnh">
                                                <i class="far fa-paper-plane"></i>Hành trình điện ảnh</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">
                                                <i class="fas fa-map-marker-alt"></i>Điểm Beta</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">
                                                <i class="fas fa-briefcase"></i>Voucher của tôi</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">
                                                <i class="fas fa-sign-out-alt"></i>Đăng xuất</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="logout">
                                    <a href="#" style="padding: 3px; background-color: transparent;">
                                        <i class="fas fa-sign-out-alt"></i>
                                    </a>
                                </li>
                            </ul>

                        </div>
                    </div>
                    <!-- End pre-header -->

                    <!-- Begin header -->
                    <div class="header">
                        <div class="container">
                            <a href="Default.aspx" class="site-logo">
                                <img src="image/logo.png" style="height: 55px"/>
                            </a>

                            <div class="top-cart-block">
                                <ul>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle">Beta Mỹ Đình
									<i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu">

                                            <li class="dropdown-submenu">
                                                <a href="#">Hà Nội 
                                        	<i class="fa fa-angle-right"></i>
                                                </a>
                                                <ul class="dropdown-menu sub-1">
                                                    <li><a href="#">Beta Mỹ Đình</a></li>
                                                    <li><a href="#">Beta Thanh Xuân</a></li>
                                                    <li><a href="#">Beta Đan Phượng</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown-submenu">
                                                <a href="#">An Giang 
                                        	<i class="fa fa-angle-right"></i>
                                                </a>
                                                <ul class="dropdown-menu sub-2">
                                                    <li><a href="#">Beta Long Xuyên</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown-submenu">
                                                <a href="#">Bắc Giang 
                                        	<i class="fa fa-angle-right"></i>
                                                </a>
                                                <ul class="dropdown-menu sub-3">
                                                    <li><a href="#">Beta Bắc Giang</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown-submenu">
                                                <a href="#">Đồng Nai 
                                        	<i class="fa fa-angle-right"></i>
                                                </a>
                                                <ul class="dropdown-menu sub-4">
                                                    <li><a href="#">Beta Biên Hòa</a></li>
                                                    <li><a href="#">Meci Long Khánh</a></li>
                                                    <li><a href="#">Meci Long Thành</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown-submenu">
                                                <a href="#">Khánh Hòa 
                                        	<i class="fa fa-angle-right"></i>
                                                </a>
                                                <ul class="dropdown-menu sub-5">
                                                    <li><a href="#">Beta Nha Trang</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown-submenu">
                                                <a href="#">Thái Nguyên 
                                        	<i class="fa fa-angle-right"></i>
                                                </a>
                                                <ul class="dropdown-menu sub-6">
                                                    <li><a href="#">Beta Thái Nguyên</a></li>
                                                </ul>
                                            </li>

                                            <li class="dropdown-submenu">
                                                <a href="#">Thanh Hóa 
                                        	<i class="fa fa-angle-right"></i>
                                                </a>
                                                <ul class="dropdown-menu sub-7">
                                                    <li><a href="#">Beta Thanh Hóa</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                            <!-- Begin header-navigation -->
                            <div class="header-navigation">
                                <ul>
                                    <li>
                                        <a href="Default.aspx?modul=QLLichChieu&submodul=LichChieuTheoRap">LỊCH CHIẾU THEO PHIM</a>
                                    </li>
                                    <li>
                                        <a href="Default.aspx?modul=QLPhim&submodul=DanhSachPhim">PHIM</a>
                                    </li>
                                    <li>
                                        <a href="Default.aspx?modul=QLLichChieu&submodul=ThongTinRap">RẠP</a>
                                    </li>
                                    <li>
                                        <a href="Default.aspx?modul=QLDatVe&submodul=GiaVe">GIÁ VÉ</a>
                                    </li>
                                    <li>
                                        <a href="Default.aspx?modul=QLTTVaQC">TIN MỚI VÀ ƯU ĐÃI</a>
                                    </li>
                                    <li>
                                        <a href="#">VOUCHER MIỄN PHÍ</a>
                                    </li>
                                    <li>
                                        <a href="Default.aspx?modul=QLTaiKhoan&submodul=DNDK">THÀNH VIÊN</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- End header-navigation -->
                        </div>
                    </div>
                    <!-- End header -->

                    <!-- Chọn rạp chiếu phim -->
                    <div class="fancybox-container">
                        <div class="fancybox-bg"></div>
                        <div class="fancybox-content" style="width: 700px;">
                            <div class="close">
                                <i class="fas fa-times"></i>
                            </div>
                            <div class="text-center">
                                <div class="form-group">
                                    <label for="">Tỉnh/ Thành phố</label>

                                    <select id="cboTinhThanh">
                                        <option class="option-item" value="0">Chọn Tỉnh/ Thành phố</option>
                                        <option class="option-item" value="">Hà Nội</option>
                                        <option class="option-item" value="">An Giang</option>
                                        <option class="option-item" value="">Bắc Giang</option>
                                        <option class="option-item" value="">Đồng Nai</option>
                                        <option class="option-item" value="">Khánh Hòa</option>
                                        <option class="option-item" value="">Thái Nguyên</option>
                                        <option class="option-item" value="">Thanh Hóa</option>
                                    </select>
                                </div>

                                <div class="form-group-2">
                                    <label for="">Tên rạp</label>

                                    <select id="cborap">
                                        <option value="0">Chọn rạp phim</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Xem trailer phim -->
                    <div class="fancybox-trailer">
                        <div class="fancybox-main-trailer">
                            <div class="close">
                                <i class="fas fa-times"></i>
                            </div>
                            <div class="main-trailer">
                                <div class="header-trailer">
                                    <h3>TRAILER - <span class="tenphim">Mắt Biếc</span></h3>
                                </div>
                                <div class="video-trailer">
                                    <iframe width="622px" height="350px" src="https://www.youtube.com/embed/rmtx2St_U_s" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    <!-- <video src="video/Official Trailer - Mắt Biếc - Beta Cineplex - Khởi chiếu Tháng 12-2019.mp4" width="622px" height="350px"  autoplay="autoplay" controls="controls" preload="preload"></video> -->
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Click vào Mua vé -->
                    <div class="fancybox-showtimes">
                        <div class="fancybox-main-showtimes" style="display: inline-block; height: 510px; width: 1000px">
                            <div class="close">
                                <i class="fas fa-times"></i>
                            </div>
                            <div class="main-showtimes">
                                <div class="header-showtimes">
                                    <h3>LỊCH CHIẾU - <span class="tenphim-showtimes">Mắt Biếc</span></h3>
                                </div>
                                <div class="main-body" style="height: 430px; overflow-y: auto;">
                                    <div class="pull-left">
                                        <div class="pull-left">
                                            <h4 style="margin: 3px 0px; padding-right: 10px;">Chọn rạp</h4>
                                        </div>

                                        <div class="top-cart-block">
                                            <ul>
                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle">Beta Mỹ Đình
												<i class="fa fa-angle-down"></i>
                                                    </a>
                                                    <ul class="dropdown-menu">

                                                        <li class="dropdown-submenu">
                                                            <a href="#">Hà Nội 
			                                        	<i class="fa fa-angle-right"></i>
                                                            </a>
                                                            <ul class="dropdown-menu sub-1">
                                                                <li><a href="#">Beta Mỹ Đình</a></li>
                                                                <li><a href="#">Beta Thanh Xuân</a></li>
                                                                <li><a href="#">Beta Đan Phượng</a></li>
                                                            </ul>
                                                        </li>

                                                        <li class="dropdown-submenu">
                                                            <a href="#">An Giang 
			                                        	<i class="fa fa-angle-right"></i>
                                                            </a>
                                                            <ul class="dropdown-menu sub-2">
                                                                <li><a href="#">Beta Long Xuyên</a></li>
                                                            </ul>
                                                        </li>

                                                        <li class="dropdown-submenu">
                                                            <a href="#">Bắc Giang 
			                                        	<i class="fa fa-angle-right"></i>
                                                            </a>
                                                            <ul class="dropdown-menu sub-3">
                                                                <li><a href="#">Beta Bắc Giang</a></li>
                                                            </ul>
                                                        </li>

                                                        <li class="dropdown-submenu">
                                                            <a href="#">Đồng Nai 
			                                        	<i class="fa fa-angle-right"></i>
                                                            </a>
                                                            <ul class="dropdown-menu sub-4">
                                                                <li><a href="#">Beta Biên Hòa</a></li>
                                                                <li><a href="#">Meci Long Khánh</a></li>
                                                                <li><a href="#">Meci Long Thành</a></li>
                                                            </ul>
                                                        </li>

                                                        <li class="dropdown-submenu">
                                                            <a href="#">Khánh Hòa 
			                                        	<i class="fa fa-angle-right"></i>
                                                            </a>
                                                            <ul class="dropdown-menu sub-5">
                                                                <li><a href="#">Beta Nha Trang</a></li>
                                                            </ul>
                                                        </li>

                                                        <li class="dropdown-submenu">
                                                            <a href="#">Thái Nguyên 
			                                        	<i class="fa fa-angle-right"></i>
                                                            </a>
                                                            <ul class="dropdown-menu sub-6">
                                                                <li><a href="#">Beta Thái Nguyên</a></li>
                                                            </ul>
                                                        </li>

                                                        <li class="dropdown-submenu">
                                                            <a href="#">Thanh Hóa 
			                                        	<i class="fa fa-angle-right"></i>
                                                            </a>
                                                            <ul class="dropdown-menu sub-7">
                                                                <li><a href="#">Beta Thanh Hóa</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <h1 class="text-center" style="width: 100%">Rạp <span>Beta Mỹ Đình</span>
                                    </h1>
                                    <div class="content-showtimes">
                                        <ul class="nav-tabs dayofweek" style="margin-bottom: 10px; margin-left: 1%; margin-right: 1%">
                                            <li class="active-tab">
                                                <a href="#">
                                                    <span class="font-38">23</span>/12 - T2
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="font-38">24</span>/12 - T3
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="font-38">25</span>/12 - T4
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="font-38">26</span>/12 - T5
                                                </a>
                                            </li>
                                        </ul>

                                        <div class="tab-content">
                                            <div class="tab-pane">
                                                <div class="title-tab-panel">
                                                    <span class="bold">2D Phụ đề</span>
                                                </div>
                                                <div class="text-center showtimes-item">
                                                    <a href="#" style="width: 100%" class="btn">22:10</a>
                                                    <div class="font-smaller">69 ghế trống</div>
                                                </div>
                                                <div class="text-center showtimes-item">
                                                    <a href="#" style="width: 100%" class="btn">22:40</a>
                                                    <div class="font-smaller">140 ghế trống</div>
                                                </div>
                                                <div class="text-center showtimes-item">
                                                    <a href="#" style="width: 100%" class="btn">23:15</a>
                                                    <div class="font-smaller">124 ghế trống</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chọn rạp đặt vé khi chưa login -->
                    <div class="fancybox-slide-nologin">
                        <div class="fancybox-content" style="width: 700px">
                            <div class="close">
                                <i class="fas fa-times"></i>
                            </div>
                            <div class="product-page">
                                <div class="modal-header">
                                    <h3>BẠN ĐANG ĐẶT VÉ XEM PHIM</h3>
                                </div>
                                <div class="modal-body">
                                    <h1 class="text-center" id="tenphim-datve">Mắt Biếc</h1>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width: 30%">
                                                    <h4>Rạp chiếu</h4>
                                                </th>
                                                <th class="text-center" style="width: 30%">
                                                    <h4>Ngày chiếu</h4>
                                                </th>
                                                <th class="text-center" style="width: 30%">
                                                    <h4>Giờ chiếu</h4>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center bold font-lg">
                                                    <h3><span class="bold">Beta Mỹ Đình</span></h3>
                                                </td>
                                                <td class="text-center bold font-lg">
                                                    <h3><span class="bold">23/12/2019</span></h3>
                                                </td>
                                                <td class="text-center bold font-lg">
                                                    <h3><span class="bold">22:10</span></h3>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="modal-footer text-center">
                                    <a href="#" class="btn-mua-ve" id="btn-dat-ve">
                                        <span>
                                            <i class="fas fa-ticket-alt"></i>
                                            ĐỒNG Ý
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End header-panel -->

                <!-- Begin content -->


                <uc1:DisplayLoadControl runat="server" ID="DisplayLoadControl" />


                <!-- End content -->
                <!-- Top control -->
                <div id="topcontrol" style="position: fixed; bottom: 10px; right: 10px; opacity: 1; cursor: pointer; z-index: 99;">
                    <img src="image/up.png" style="width: 40px; height: 40px"/>
                </div>
                <!-- Begin footer -->
                <div class="footer">
                    <div class="container">
                        <div class="footer-menu">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="#">
                                        <img src="image/logo.png" alt="" width="120px"/></a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right"></i>
                                    <a href="#">Tuyển dụng</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right"></i>
                                    <a href="#">Giới thiệu</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right"></i>
                                    <a href="#">Liên hệ</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right"></i>
                                    <a href="#">F.A.Q</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right"></i>
                                    <a href="#">Hoạt động xã hội</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right"></i>
                                    <a href="#">Điều khoản sữ dụng</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right"></i>
                                    <a href="#">Liên hệ quảng cáo</a>
                                </li>
                                <li>
                                    <i class="fas fa-angle-right"></i>
                                    <a href="#">Điều khoản bảo mật</a>
                                </li>
                            </ul>
                        </div>
                        <div class="footer-inf">
                            <div class="inf-addr">
                                <h2>CỤM RẠP BETA</h2>
                                <ul class="list-unstyled" style="float: left;">
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Thái Nguyên: Hotline (024) 7302 8885 (số máy lẻ: 401)
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Biên Hòa: Hotline (0251) 7300 999
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Thanh Xuân: Hotline (024) 7302 8885 (số máy lẻ: 301)
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Mỹ Đình: Hotline (024) 7302 8885 (số máy lẻ: 502)
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Thanh Hóa: Hotline (024) 7302 8885 (số máy lẻ 801)
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Bắc Giang: Hotline (024) 7302 8885 (số máy lẻ 601)
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Đan Phượng: Hotline (024) 7302 8885 (số máy lẻ 404)
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Long Xuyên: Hotline 0296 7302 885
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Cao Thắng: Hotline 028 7302 8885 (số máy lẻ 706)
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Beta Cineplex Nha Trang: Hotline 0258 7302 885
                                        </a>
                                    </li>
                                    <li>
                                        <i class="fas fa-angle-right"></i>
                                        <a href="#">Tải Ứng Dụng Beta Cineplex
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="connect">
                                <h2>KẾT NỐI VỚI CHÚNG TÔI</h2>
                                <ul class="social-icons">
                                    <li>
                                        <a href="#"><i class="fab fa-facebook-square"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fab fa-youtube"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fab fa-twitter-square"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </li>
                                </ul>
                                <img src="image/dathongbao.png" alt="" style="width: 180px;"/>
                            </div>

                            <div class="social">
                                <h2>LIÊN HỆ</h2>
                                <div style="float: left;">
                                    <h4 class="no-margin">CÔNG TY CỔ PHẦN BETA MEDIA</h4>
                                    <h6>Giấy chứng nhận ĐKKD số: 0106633482</h6>
                                    <h6>Tầng 3, số 595, đường Giải Phóng, phường 
	                            Giáp Bát, quận Hoàng Mai, thành phố Hà Nội
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End footer -->

            </div>
        </div>
    </form>
</body>
</html>
