﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan.DNDK.DangNhap" %>

<link href="../../../../css/DangNhap.css" rel="stylesheet" />

<div class="body-content">
    <ul>
        <li class="text-center" id="login"><a href="#" style="background: rgb(51, 122, 183);">Đăng nhập</a>  </li>
        <%--<li class="text-center" id="register"><a href="#">Đăng ký</a> </li>--%>
    </ul>
    <div class="tab-content">
        <div class="tab-login">
            <form action="" name="login_form">
                <div class="form-group">
                    <div class="email">
                        <label class="control-label">Email</label>
                        <div class="input-icon">
                            <i class="fas fa-user"></i>
                            <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="password">
                        <label class="control-label">Mật khẩu</label>
                        <div class="input-icon">
                            <i class="fas fa-lock"></i>
                            <asp:TextBox ID="tbMatKhau" runat="server" CssClass="form-control" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="forget-pass">
                        <a href="#">Quên mật khẩu?</a>
                    </div>
                </div>
                <div class="form-group">
                    <div class="captcha">
                        <img class="pull-left" src="image/capthca.png" alt="">
                        <a class="pull-left" href="#"><i class="fas fa-sync-alt"></i></a>
                    </div>
                    <div class="maxacthuc">
                        <input type="text" class="form-control" id="txtMaXacThuc" name="capthca" placeholder="Mã xác thực">
                    </div>
                </div>

                <div class="form-group">
                    <div class="text-center">
                        <asp:LinkButton ID="lbtDangNhap" CssClass="btn btn1" runat="server" OnClick="lbtDangNhap_Click">Đăng nhập bằng tài khoản</asp:LinkButton>

                    </div>
                </div>
                <div class="form-group">
                    <div class="text-center">
                        <a class="btn btn2">Đăng nhập bằng facebook
                        </a>
                    </div>
                </div>
            </form>
        </div>
        <%--<div class="tab-register">
            <div class="form-group">
                <div class="name">
                    <label class="control-label">
                        <span>*</span>
                        &nbsp;Họ tên
                    </label>
                    <input type="text" id="txtname" class="form-control" name="hoten" placeholder="Họ tên">
                </div>
                <div class="email">
                    <label class="control-label">
                        <span>*</span>
                        &nbsp;Email
                    </label>
                    <div class="input-icon">
                        <i class="fa fa-envelope"></i>
                        <input type="text" class="form-control" id="txtEmail" name="r_email" placeholder="Email">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="pass">
                    <label class="control-label">
                        <span>*</span>
                        &nbsp;Mật khẩu
                    </label>
                    <div class="input-icon">
                        <i class="fa fa-lock"></i>
                        <input type="password" class="form-control" id="txtPass" name="r_password" placeholder="Mật khẩu">
                    </div>
                </div>
                <div class="re-pass">
                    <label class="control-label">
                        <span>*</span>
                        &nbsp;Xác nhận lại mật khẩu
                    </label>
                    <div class="input-icon">
                        <i class="fa fa-lock"></i>
                        <input type="password" class="form-control" id="txtRepass" name="r_repass" placeholder="Xác nhận lại mật khẩu">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="date">
                    <label class="control-label">
                        <span>*</span>
                        &nbsp;Ngày sinh
                    </label>
                    <div class="input-icon">
                        <i class="fa fa-calendar-alt"></i>
                        <input type="text" class="form-control" id="txtNgaySinh" name="ngaysinh" placeholder="Ngày Sinh " data-date-format="dd/mm/yy">
                    </div>
                </div>
                <div class="sex">
                    <label class="control-label">
                        <span>*</span>
                        &nbsp;Giới tính
                    </label>
                    <div class="input-icon">
                        <i class="fa fa-male"></i>
                        <select name="" id="cboSex" class="form-control" name="gioitinh" data-placeholder="Giới tính" tabindex="1">
                            <option value="0" class="option-item">Giới tính</option>
                            <option value="1" class="option-item">Nam</option>
                            <option value="2" class="option-item">Nữ</option>
                            <option value="3" class="option-item">Khác</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="SDT">
                    <label class="control-label">
                        <span>*</span>
                        &nbsp;Số điện thoại
                    </label>
                    <div class="input-icon">
                        <i class="fa fa-phone-square"></i>
                        <input type="text" class="form-control" id="txtDienThoai" name="sdt" placeholder="Số điện thoại">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="captcha">
                    <img class="pull-left" src="image/capthca.png" alt="">
                    <a class="pull-left" href="#"><i class="fas fa-sync-alt"></i></a>
                </div>
                <div class="maxacthuc">
                    <input type="text" class="form-control" id="txtMaXacThuc" name="maxacthuc" placeholder="Mã xác thực">
                </div>
            </div>
            <div class="form-group">
                <div class="camket">
                    <input type="checkbox" id="chk" value="0" name="camket">
                    <span>Tôi cam kết tuân thủ chính sách bảo mật và điều khoản sử dụng của Betacineplex.
                    </span>
                </div>
            </div>
            <div class="form-group">
                <a class="btn btn1" href="#">Đăng ký
                </a>
            </div>
            <div class="form-group">
                <a class="btn btn2" href="#">Tiếp tục với facebook
                </a>

            </div>
        </div>--%>
    </div>

</div>
