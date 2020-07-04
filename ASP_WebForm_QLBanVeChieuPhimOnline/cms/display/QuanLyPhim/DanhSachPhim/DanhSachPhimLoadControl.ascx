<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachPhimLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyPhim.DanhSachPhim.DanhSachPhimLoadControl" %>
<link href="CSS/lich-chieu.css" rel="stylesheet" />
<link href="CSS/banner.css" rel="stylesheet" />
<script src="js/lich-chieu-banner.js"></script>

 <div class="main-panel">
        <div class="banner-l banner">
            <a href="#">
                <asp:Literal ID="ltrBannerL" runat="server"></asp:Literal>
            </a>
        </div>
        <div class="banner-r banner">
            <a href="#">
                <asp:Literal ID="ltrBannerR" runat="server"></asp:Literal>
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
            <asp:PlaceHolder ID="plLoadControl" runat="server"></asp:PlaceHolder>
            
        </div>
    </div>
<%--<div class="content">
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

            <div class="ct-title-menu">
                <a href="Default.aspx?modul=QLPhim&submodul=DanhSachPhim&thirdmodul=SapChieu">Phim sắp chiếu</a>
                <a href="Default.aspx?modul=QLPhim&submodul=DanhSachPhim&thirdmodul=DangChieu" class="active_tab">Phim đang chiếu</a>
                <a href="Default.aspx?modul=QLPhim&submodul=DanhSachPhim&thirdmodul=DacBiet">Suất Chiếu đặc biệt</a>
            </div>
            <asp:PlaceHolder ID="plLoadControl" runat="server"></asp:PlaceHolder>
            
        </div>
    </div>

</div>--%>

