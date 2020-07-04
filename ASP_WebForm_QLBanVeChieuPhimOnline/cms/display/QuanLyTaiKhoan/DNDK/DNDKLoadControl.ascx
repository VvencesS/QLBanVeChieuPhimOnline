<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DNDKLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan.DNDK.DNDKLoadControl" %>
<link href="CSS/banner.css" rel="stylesheet" />
<link href="CSS/login.css" rel="stylesheet" />
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
            
            <asp:PlaceHolder ID="plLoadControl" runat="server"></asp:PlaceHolder>
            <!-- kết thúc phần body-content -->
        </div>
        
    </div>

</div>

