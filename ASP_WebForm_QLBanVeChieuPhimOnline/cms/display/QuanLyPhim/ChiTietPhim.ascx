<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietPhim.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyPhim.ChiTietPhim" %>
<link href="CSS/chi-tiet-phim.css" rel="stylesheet" />
<link href="CSS/banner.css" rel="stylesheet" />
<script src="js/chon-ghe.js"></script>
<script src="js/chi-tiet-phim.js"></script>
<script src="js/chon-ghe-banner.js"></script>
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
            <div class="title">
                <a href="#">Trang chủ</a>
                <span>></span>
                <a href="#"><asp:Literal ID="ltrTenPhim" runat="server"></asp:Literal></a>
            </div>
            <asp:Literal ID="ltrChiTietPhim" runat="server"></asp:Literal>
            <asp:Literal ID="ltrNgayChieu" runat="server"></asp:Literal>
            <asp:Literal ID="ltrGioChieu" runat="server"></asp:Literal>
           
            <div class="nut">
                <div class="like"><i class="fa fa-thumbs-up" aria-hidden="true"></i>Thích</div>
                <div class="share">Chia sẻ</div>
                <div class="content1">19 người thích nội dung này. Hãy là người đầu tiên trong số bạn bè của bạn.</div>
            </div>
        </div>

    </div>
    <div class="fullwidthbanner-container">
        <div class="container">
            <div class="text-center">
                <ul class="tab-films">
                    <li class="active"><a>
                        <h1 style="color: #fff;" class="bold">TRAILER</h1>
                    </a></li>
                </ul>
            </div>
            <div class="row">
                <asp:Literal ID="ltrTrailer" runat="server"></asp:Literal>
                
                <div class="col-md-16">
                    <div class="fb-comments" style="width: 100%;">
                        <span style="vertical-align: bottom; width: 100%; height: 178px;">
                            <iframe name="f36514364c8a19" width="1000px" height="100px" title="fb:comments Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v3.2/plugins/comments.php?app_id=367174740769877&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df28976074d8205c%26domain%3Dwww.betacineplex.vn%26origin%3Dhttps%253A%252F%252Fwww.betacineplex.vn%252Ff25519a0215e778%26relation%3Dparent.parent&amp;color_scheme=dark&amp;container_width=1120&amp;height=100&amp;href=https%3A%2F%2Fwww.betacineplex.vn%2Fchi-tiet-phim.htm%3Fgf%3Dcf064af8-d4ff-45a5-97d0-fe740e92dabb&amp;locale=vi_VN&amp;numposts=5&amp;sdk=joey&amp;version=v3.2" style="border: none; visibility: visible; width: 100%; height: 178px;" class=""></iframe>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
