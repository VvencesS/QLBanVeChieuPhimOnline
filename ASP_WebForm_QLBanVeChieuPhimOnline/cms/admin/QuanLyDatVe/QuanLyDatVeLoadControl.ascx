<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuanLyDatVeLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.QuanLyDatVeLoadControl" %>
<div class="container">
    <div style="clear: both; height: 20px"></div>
    <div class="cotTrai">
        <div class="head">
            Quản lý đặt vé
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLDatVe", "Combo", "") %>" href="Admin.aspx?modul=QLDatVe&submodul=Combo">Danh sách Combo</a></li>
            <li><a class="<%=DanhDau("QLDatVe", "Gia", "") %>" href="Admin.aspx?modul=QLDatVe&submodul=Gia">Danh sách giá</a></li>
            <li><a class="<%=DanhDau("QLDatVe", "BaoGia", "") %>" href="Admin.aspx?modul=QLDatVe&submodul=BaoGia">Danh sách báo giá</a></li>
            <li><a class="<%=DanhDau("QLDatVe", "Ve", "") %>" href="Admin.aspx?modul=QLDatVe&submodul=Ve">Danh sách vé</a></li>
        </ul>
        <div class="head">
            Thêm mới
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLDatVe", "Combo", "ThemMoi") %>" href="Admin.aspx?modul=QLDatVe&submodul=Combo&thaotac=ThemMoi">Thêm mới Combo</a></li>
            <li><a class="<%=DanhDau("QLDatVe", "Gia", "ThemMoi") %>" href="Admin.aspx?modul=QLDatVe&submodul=Gia&thaotac=ThemMoi">Thêm mới giá</a></li>
            <li><a class="<%=DanhDau("QLDatVe", "Ve", "ThemMoi") %>" href="Admin.aspx?modul=QLDatVe&submodul=Ve&thaotac=ThemMoi">Thêm mới vé</a></li>
        </ul>
    </div>
    <div class="cotPhai">
        <asp:PlaceHolder ID="plSanPhamLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>

</div>
