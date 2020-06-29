<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuanLyPhimLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.QuanLyPhimLoadControl" %>
<div class="container">
    <div style="clear: both; height: 20px"></div>
    <div class="cotTrai">
        <div class="head">
            Quản lý phim
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLPhim", "TheLoai", "") %>" href="Admin.aspx?modul=QLPhim&submodul=TheLoai">Danh sách thể loại</a></li>
            <li><a class="<%=DanhDau("QLPhim", "QuocGia", "") %>" href="Admin.aspx?modul=QLPhim&submodul=QuocGia">Danh sách quốc gia</a></li>
            <li><a class="<%=DanhDau("QLPhim", "HangPhim", "") %>" href="Admin.aspx?modul=QLPhim&submodul=HangPhim">Danh sách hãng phim</a></li>
            <li><a class="<%=DanhDau("QLPhim", "DinhDang", "") %>" href="Admin.aspx?modul=QLPhim&submodul=DinhDang">Danh sách định dạng</a></li>
            <li><a class="<%=DanhDau("QLPhim", "Phim", "") %>" href="Admin.aspx?modul=QLPhim&submodul=Phim">Danh sách phim</a></li>
        </ul>
        <div class="head">
            Thêm mới
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLPhim", "TheLoai", "ThemMoi") %>" href="Admin.aspx?modul=QLPhim&submodul=TheLoai&thaotac=ThemMoi">Thêm mới thể loại</a></li>
            <li><a class="<%=DanhDau("QLPhim", "QuocGia", "ThemMoi") %>" href="Admin.aspx?modul=QLPhim&submodul=QuocGia&thaotac=ThemMoi">Thêm mới quốc gia</a></li>
            <li><a class="<%=DanhDau("QLPhim", "HangPhim", "ThemMoi") %>" href="Admin.aspx?modul=QLPhim&submodul=HangPhim&thaotac=ThemMoi">Thêm mới hãng phim</a></li>
            <li><a class="<%=DanhDau("QLPhim", "DinhDang", "ThemMoi") %>" href="Admin.aspx?modul=QLPhim&submodul=DinhDang&thaotac=ThemMoi">Thêm mới định dạng</a></li>
            <li><a class="<%=DanhDau("QLPhim", "Phim", "ThemMoi") %>" href="Admin.aspx?modul=QLPhim&submodul=Phim&thaotac=ThemMoi">Thêm mới phim</a></li>
        </ul>
    </div>
    <div class="cotPhai">
        <asp:PlaceHolder ID="plSanPhamLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>

</div>
