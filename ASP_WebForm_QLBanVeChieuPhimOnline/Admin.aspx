<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.Admin" %>

<%@ Register Src="~/cms/admin/AdminLoadControl.ascx" TagPrefix="uc1" TagName="AdminLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang quản trị website</title>
    <link href="cms/admin/css/cssAdmin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--Header--%>
            <div id="header">
                <div class="container">
                    <div class="logo">
                        <a href="/Admin.aspx">
                            <img src="pic/Logo/logo.png" /></a>
                    </div>
                    <div class="accountMenu">
                        Xin chào Admin | Đăng xuất
                        <%--Xin chào:<asp:Literal ID="ltrTenDangNhap" runat="server"></asp:Literal> | <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton>--%>
                    </div>
                </div>
            </div>

            <%--MenuChinh--%>
            <div class="MenuChinh">
                <div class="container">
                    <ul>
                        <li>
                            <a href="Admin.aspx?modul=QLPhim">Quản lý phim</a>
                            <ul class="sub-menu">
                                <li><a href="Admin.aspx?modul=QLPhim&submodul=TheLoai">Thể loại</a></li>
                                <li><a href="Admin.aspx?modul=QLPhim&submodul=QuocGia">Quốc gia</a></li>
                                <li><a href="Admin.aspx?modul=QLPhim&submodul=HangPhim">Hãng phim</a></li>
                                <li><a href="Admin.aspx?modul=QLPhim&submodul=DinhDang">Định dạng</a></li>
                                <li><a href="Admin.aspx?modul=QLPhim&submodul=Phim">Phim</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="Admin.aspx?modul=QLLichChieu">Quản lý lịch chiếu</a>
                            <ul class="sub-menu">
                                <li><a href="Admin.aspx?modul=QLLichChieu&submodul=Rap">Rạp</a></li>
                                <li><a href="Admin.aspx?modul=QLLichChieu&submodul=Phong">Phòng</a></li>
                                <li><a href="Admin.aspx?modul=QLLichChieu&submodul=SoGhe">Số ghế</a></li>
                                <li><a href="Admin.aspx?modul=QLLichChieu&submodul=Ghe">Ghế</a></li>
                                <li><a href="Admin.aspx?modul=QLLichChieu&submodul=KTG">Khung thời gian</a></li>
                                <li><a href="Admin.aspx?modul=QLLichChieu&submodul=LichChieu">Lịch chiếu</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="Admin.aspx?modul=QLTaiKhoan">Quản lý tài khoản</a>
                            <ul class="sub-menu">
                                <li><a href="Admin.aspx?modul=QLTaiKhoan&submodul=NhanVien">Nhân viên</a></li>
                                <li><a href="Admin.aspx?modul=QLTaiKhoan&submodul=ThanhVien">Thành viên</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="Admin.aspx?modul=QLTTVaQC">Quản lý tin tức và quảng cáo</a>
                            <ul class="sub-menu">
                                <li><a href="Admin.aspx?modul=QLTTVaQC&submodul=LoaiTT">Loại tin tức</a></li>
                                <li><a href="Admin.aspx?modul=QLTTVaQC&submodul=LoaiQC">Loại quảng cáo</a></li>
                                <li><a href="Admin.aspx?modul=QLTTVaQC&submodul=TinTuc">Tin tức</a></li>
                                <li><a href="Admin.aspx?modul=QLTTVaQC&submodul=QuangCao">Quảng cáo</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="Admin.aspx?modul=QLDatVe">Quản lý đặt vé</a>
                            <ul class="sub-menu">
                                <li><a href="Admin.aspx?modul=QLDatVe&submodul=Combo">Combo</a></li>
                                <li><a href="Admin.aspx?modul=QLDatVe&submodul=Gia">Giá</a></li>
                                <%--<li><a href="Admin.aspx?modul=QLDatVe&submodul=BaoGia">Báo giá</a></li>--%>
                                <li><a href="Admin.aspx?modul=QLDatVe&submodul=Ve">Vé</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <%--Phần nội dung trang--%>
            <div class="main">
                <uc1:AdminLoadControl runat="server" ID="AdminLoadControl" />
            </div>
        </div>
    </form>
    <script src="cms/admin/js/jquery-3.1.1.min.js"></script>
</body>
</html>
