<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuanLyLichChieuLoadControl.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.QuanLyLichChieuLoadControl" %>
<div class="container">
    <div style="clear: both; height: 20px"></div>
    <div class="cotTrai">
        <div class="head">
            Quản lý lịch chiếu
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLLichChieu", "Rap", "") %>" href="Admin.aspx?modul=QLLichChieu&submodul=Rap">Danh sách rạp</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "Phong", "") %>" href="Admin.aspx?modul=QLLichChieu&submodul=Phong">Danh sách phòng</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "SoGhe", "") %>" href="Admin.aspx?modul=QLLichChieu&submodul=SoGhe">Danh sách số ghế</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "Ghe", "") %>" href="Admin.aspx?modul=QLLichChieu&submodul=Ghe">Danh sách ghế</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "KTG", "") %>" href="Admin.aspx?modul=QLLichChieu&submodul=KTG">Danh sách khung thời gian</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "LichChieu", "") %>" href="Admin.aspx?modul=QLLichChieu&submodul=LichChieu">Danh sách lịch chiếu</a></li>
        </ul>
        <div class="head">
            Thêm mới
        </div>
        <ul>
            <li><a class="<%=DanhDau("QLLichChieu", "Rap", "ThemMoi") %>" href="Admin.aspx?modul=QLLichChieu&submodul=Rap&thaotac=ThemMoi">Thêm mới rạp</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "Phong", "ThemMoi") %>" href="Admin.aspx?modul=QLLichChieu&submodul=Phong&thaotac=ThemMoi">Thêm mới phòng</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "SoGhe", "ThemMoi") %>" href="Admin.aspx?modul=QLLichChieu&submodul=SoGhe&thaotac=ThemMoi">Thêm mới số ghế</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "Ghe", "ThemMoi") %>" href="Admin.aspx?modul=QLLichChieu&submodul=Ghe&thaotac=ThemMoi">Thêm mới ghế</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "KTG", "ThemMoi") %>" href="Admin.aspx?modul=QLLichChieu&submodul=KTG&thaotac=ThemMoi">Thêm mới khung thời gian</a></li>
            <li><a class="<%=DanhDau("QLLichChieu", "LichChieu", "ThemMoi") %>" href="Admin.aspx?modul=QLLichChieu&submodul=LichChieu&thaotac=ThemMoi">Thêm mới lịch chiếu</a></li>
        </ul>
    </div>
    <div class="cotPhai">
        <asp:PlaceHolder ID="plSanPhamLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>

</div>
