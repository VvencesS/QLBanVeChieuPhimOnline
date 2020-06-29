<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuanLyTaiKhoanLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan.QuanLyTaiKhoanLoadControl" %>
<div class="container">
    <div style="clear: both; height: 20px"></div>
    <div class="cotTrai">
        <div class="head">
            Quản lý đặt vé
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLTaiKhoan", "NhanVien", "") %>" href="Admin.aspx?modul=QLTaiKhoan&submodul=NhanVien">Danh sách nhân viên</a></li>
            <li><a class="<%=DanhDau("QLTaiKhoan", "ThanhVien", "") %>" href="Admin.aspx?modul=QLTaiKhoan&submodul=ThanhVien">Danh sách thành viên</a></li>
        </ul>
        <div class="head">
            Thêm mới
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLTaiKhoan", "NhanVien", "ThemMoi") %>" href="Admin.aspx?modul=QLTaiKhoan&submodul=NhanVien&thaotac=ThemMoi">Thêm mới nhân viên</a></li>
            <li><a class="<%=DanhDau("QLTaiKhoan", "ThanhVien", "ThemMoi") %>" href="Admin.aspx?modul=QLTaiKhoan&submodul=ThanhVien&thaotac=ThemMoi">Thêm mới thành viên</a></li>
        </ul>
    </div>
    <div class="cotPhai">
        <asp:PlaceHolder ID="plSanPhamLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>

</div>
