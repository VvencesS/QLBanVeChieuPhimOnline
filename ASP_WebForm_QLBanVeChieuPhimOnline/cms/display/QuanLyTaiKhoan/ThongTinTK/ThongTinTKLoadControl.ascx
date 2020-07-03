<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongTinTKLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan.ThongTinTK.ThongTinTKLoadControl" %>
<link href="CSS/banner.css" rel="stylesheet" />
    <link href="CSS/member.css" rel="stylesheet" />
<script src="js/chon-ghe-banner.js"></script>
    <script src="js/login.js"></script>
    <script src="js/close-fancybox-container.js"></script>

<div class="content">
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

			<div class="main-panel">

				<div class="container">
		            <div class="row">
		                <div class="body-content">
		                    <ul>
		                        <li class="text-center" id="info" ><a href="#tab-info">Thông tin tài khoản</a></li>
		                        <li class="text-center" id="card-member" ><a href="#tab-card-member">Thẻ thành viên</a></li>
		                        <li class="text-center" id="history"><a href="#tab-history">Hành trình điện ảnh</a></li>
		                        <li class="text-center" id="point" ><a href="#tab-point">Điểm beta</a></li>
		                        <li class="text-center" id="voucher"><a href="#tab-voucher">voucher</a></li>
		                    </ul>
		                    <div class="tab-content">
								<asp:PlaceHolder ID="plLoadControl" runat="server"></asp:PlaceHolder>
		                        
		                        <div id="tab-card-member" class="tab-pane">
		                            <div class="table-responsive">
		                                <table>
		                                    <thead>
		                                        <tr>
		                                            <th class="text-uppercase" style="width: 20%;">số thẻ</th>
		                                            <th class="text-uppercase" style="width: 20%;">hạng thẻ</th>
		                                            <th class="text-uppercase" style="width: 12%;">ngày kích hoạt</th>
		                                            <th class="text-uppercase"style="width: 12%;">tổng chỉ tiêu</th>
		                                            <th class="text-uppercase"style="width: 12%;">điểm tích lũy</th>
		                                            <th class="text-uppercase"style="width: 12%;">điểm đã tiêu</th>
		                                            <th class="text-uppercase"style="width: 12%;">điểm khả dụng</th>
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                        <tr>
		                                            <td>9002000000102741 (Đang dùng)</td>
		                                            <td>Khách hàng STANDARD</td>
		                                            <td>10/06/2018</td>
		                                            <td>122.000đ</td>
		                                            <td>5900</td>
		                                            <td>0</td>
		                                            <td>5900</td>
		                                        </tr>
		                                    </tbody>
		                                </table>
		                            </div>
		                            <div class="vip">
		                                <div class="text-center bold">Bạn cần tích lũy thêm 2.878.000 đ để nâng hạng Khách hàng VIP</div>
		                                <div class="progress">
		                                    <div class="progress-bar">
		                                        4%
		                                    </div>
		                                </div>
		                                <div class="row">
		                                    <div class="min">0</div>
		                                    <div class="max">3.000.000</div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                        <div id="tab-point" class="tab-pane">
		                            <div class="mybetapoint">
		                                <div class="form">
		                                    <h2>tổng quan</h2>
		                                </div>
		                                <div class="form">
		                                    <div class="form-left">Điểm đã tích lũy</div>
		                                    <div class="form-right"><label class="lb-point">
		                                        5900 điểm
		                                    </label>
		                                    </div>
		                                </div>
		                                <div class="form">    
		                                    <div class="form-left">Điểm đã sử dụng</div>
		                                    <div class="form-right"><label class="lb-point">
		                                        0 điểm
		                                    </label>
		                                    </div>
		                                </div>
		                                <div class="form">  
		                                    <div class="form-left">Điểm hiện có</div>
		                                    <div class="form-right"><label class="lb-point">
		                                        5900 điểm
		                                    </label>
		                                    </div>
		                                </div>  
		                                <div class="form">
		                                    <h2>lịch sử điểm</h2>
		                                </div>
		                                <div class="table-responsive">
		                                    <table>
		                                        <thead>
		                                            <tr>
		                                                <th class="text-uppercase">Thời gian</th>
		                                                <th class="text-uppercase">Số điểm</th class="text-uppercase">
		                                                <th class="text-uppercase">nội dung sử dụng</th>
		                                            </tr>
		                                        </thead>
		                                        <tbody>
		                                            <tr>
		                                                <td>24/12/2019 10:35</td>
		                                                <td>5900</td>
		                                                <td>Tích điểm</td>
		                                            </tr>
		                                        </tbody>
		                                    </table>
		                                </div>
		                            </div>
		                        </div>
		                        <div id="tab-voucher" class="tab-pane">
		                            <div class="myvoucher">
		                                <div class="form">
		                                    <h2>voucher của tôi</h2>
		                                </div>
		                                <div class="table-responsive">
		                                    <table>
		                                        <thead>
		                                            <tr>
		                                                <th class="text-uppercase">mã voucher</th>
		                                                <th class="text-uppercase">nội dung voucher</th>
		                                                <th class="text-uppercase">loại voucher</th>
		                                                <th class="text-uppercase">ngày hết hạn</th>
		                                                <th class="text-uppercase">thao tác</th>
		                                            </tr>
		                                        </thead>
		                                    </table>
		                                </div>
		                                <div class="form">
		                                    <h2>lịch sử voucher</h2>
		                                </div>
		                                <div class="table-responsive">
		                                    <table><thead><tr>
		                                        <th class="text-uppercase">thời gian</th>
		                                        <th class="text-uppercase">mã voucher</th>
		                                        <th class="text-uppercase">nội dung voucher</th>
		                                        <th class="text-uppercase">trạng thái</th>
		                                    </tr></thead></table>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>

		</div>

