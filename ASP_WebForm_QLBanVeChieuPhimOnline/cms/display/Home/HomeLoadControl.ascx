<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.Home.HomeLoadControl" %>

<link href="../../../css/home_slide.css" rel="stylesheet" />
<link href="../../../css/banner.css" rel="stylesheet" />
<script src="../../../js/home_banner.js"></script>
<script src="../../../js/home_slide.js"></script>
<script src="../../../js/home_main_panel.js"></script>

<div class="content">

    <div class="slide-panel">
        <div class="beta">
            <div class="anhslide">
                <asp:Literal ID="ltrSlide" runat="server"></asp:Literal>
                
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

            <div class="tab-content">
                <asp:Literal ID="ltrPhimDangChieu" runat="server"></asp:Literal>
                
            </div>
        </div>
    </div>

</div>
