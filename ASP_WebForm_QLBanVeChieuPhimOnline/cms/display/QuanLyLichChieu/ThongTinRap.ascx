<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongTinRap.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyLichChieu.ThongTinRap" %>
<link href="CSS/rap-info.css" rel="stylesheet" />
<script src="js/chon-ghe-banner.js"></script>

<div class="content">

    <div class="main-panel">

        <div class="container">

            <div class="col info">
                <div class="title">
                    <h1><asp:Literal ID="ltrTenRap" runat="server"></asp:Literal></h1>
                    <div class="nut">
                        <div class="like"><i class="fa fa-thumbs-up" aria-hidden="true"></i>Thích</div>
                        <div class="share">Chia sẻ</div>
                        <div class="nut-content">19 người thích nội dung này. Hãy là người đầu tiên trong số bạn bè của bạn.</div>
                    </div>
                </div>
                <div class="text-content">
                    <asp:Literal ID="ltrAnhRap" runat="server"></asp:Literal>
                    <asp:Literal ID="ltrGioiThieu" runat="server"></asp:Literal>
                    
                    <p>Thông tin liên hệ Rạp Beta Cineplex Mỹ Đình</p>
                    <p>Địa chỉ: <asp:Literal ID="ltrDiaChi" runat="server"></asp:Literal></p>
                    <p>Điện thoại: <asp:Literal ID="ltrSDTR" runat="server"></asp:Literal></p>
                    <br>
                    <p>Mua phiếu quà tặng, mua vé số lượng lớn, đặt phòng chiếu tổ chức hội nghị, trưng bày quảng cáo: Liên hệ hotline - 0934 632 682  để được hưởng ưu đãi tốt nhất bạn nhé!</p>
                    <%--<img src="image/bando.png" alt="" class="map">--%>
                </div>

                <div class="col-md-16 margin-bottom-35">
                    <div class="fb-comments" style="width: 100%;">
                        <span style="vertical-align: bottom; width: 100%; height: 275px;">
                            <iframe name="f1c209c97d85eac" width="1000px" height="100px" title="fb:comments Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v3.2/plugins/comments.php?app_id=367174740769877&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df3bfd7e8556cf4%26domain%3Dwww.betacineplex.vn%26origin%3Dhttps%253A%252F%252Fwww.betacineplex.vn%252Ff1b152a5a53c77%26relation%3Dparent.parent&amp;color_scheme=light&amp;container_width=515&amp;height=100&amp;href=https%3A%2F%2Fwww.betacineplex.vn%2Fthong-tin-rap%2Frap-my-dinh.htm&amp;locale=vi_VN&amp;numposts=5&amp;sdk=joey&amp;version=v3.2" style="border: none; visibility: visible; width: 100%; height: 275px;" class=""></iframe>
                        </span>
                    </div>
                </div>
            </div>

            <div class="col popular">
                <h1 class="title">Phim mới</h1>
                <div class="main-content">
                   <asp:Literal ID="ltrPhimMoi" runat="server"></asp:Literal>
                    
                </div>
            </div>

        </div>

    </div>

</div>
