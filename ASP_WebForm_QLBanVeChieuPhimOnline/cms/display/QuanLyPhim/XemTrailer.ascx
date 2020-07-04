<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemTrailer.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyPhim.XemTrailer" %>
trailer
<!-- Xem trailer phim -->
<div class="fancybox-trailer" style="opacity:1;visibility:visible;">
    <div class="fancybox-main-trailer">
        <div class="close">
            <i class="fas fa-times"></i>
        </div>
        <div class="main-trailer">
            <div class="header-trailer">
                <h3>TRAILER - <span class="tenphim"><asp:Literal ID="ltrTenPhim" runat="server"></asp:Literal></span></h3>
            </div>
            <div class="video-trailer">
                <asp:Literal ID="ltrTrailer" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
</div>
