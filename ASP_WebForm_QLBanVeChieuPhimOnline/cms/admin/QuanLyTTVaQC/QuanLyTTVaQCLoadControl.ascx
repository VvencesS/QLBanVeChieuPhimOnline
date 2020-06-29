<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuanLyTTVaQCLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.QuanLyTTVaQCLoadControl" %>
<div class="container">
    <div style="clear: both; height: 20px"></div>
    <div class="cotTrai">
        <div class="head">
            Quản lý đặt vé
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLTTVaQC", "LoaiTT", "") %>" href="Admin.aspx?modul=QLTTVaQC&submodul=LoaiTT">Danh sách loại tin tức</a></li>
            <li><a class="<%=DanhDau("QLTTVaQC", "LoaiQC", "") %>" href="Admin.aspx?modul=QLTTVaQC&submodul=LoaiQC">Danh sách loại quảng cáo</a></li>
            <li><a class="<%=DanhDau("QLTTVaQC", "TinTuc", "") %>" href="Admin.aspx?modul=QLTTVaQC&submodul=TinTuc">Danh sách tin tức</a></li>
            <li><a class="<%=DanhDau("QLTTVaQC", "QuangCao", "") %>" href="Admin.aspx?modul=QLTTVaQC&submodul=QuangCao">Danh sách quảng cáo</a></li>
        </ul>
        <div class="head">
            Thêm mới
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLTTVaQC", "LoaiTT", "ThemMoi") %>" href="Admin.aspx?modul=QLTTVaQC&submodul=LoaiTT&thaotac=ThemMoi">Thêm mới loại tin tức</a></li>
            <li><a class="<%=DanhDau("QLTTVaQC", "LoaiQC", "ThemMoi") %>" href="Admin.aspx?modul=QLTTVaQC&submodul=LoaiQC&thaotac=ThemMoi">Thêm mới loại quảng cáo</a></li>
            <li><a class="<%=DanhDau("QLTTVaQC", "TinTuc", "ThemMoi") %>" href="Admin.aspx?modul=QLTTVaQC&submodul=TinTuc&thaotac=ThemMoi">Thêm mới tin tức</a></li>
            <li><a class="<%=DanhDau("QLTTVaQC", "QuangCao", "ThemMoi") %>" href="Admin.aspx?modul=QLTTVaQC&submodul=QuangCao&thaotac=ThemMoi">Thêm mới quảng cáo</a></li>
        </ul>
    </div>
    <div class="cotPhai">
        <asp:PlaceHolder ID="plSanPhamLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>

</div>
