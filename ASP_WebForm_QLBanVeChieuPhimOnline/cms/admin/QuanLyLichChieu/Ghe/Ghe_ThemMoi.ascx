<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ghe_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Ghe.Ghe_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa ghế
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
    <div class="thongTin">
        <div class="tenTruong">Số ghế</div>
        <div class="oNhap"><asp:DropDownList ID="ddlSoGhe" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Loại ghế</div>
        <div class="oNhap"><asp:DropDownList ID="ddlLoaiGhe" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Ghế thuộc phòng</div>
        <div class="oNhap"><asp:DropDownList ID="ddlPhong" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Trạng thái ghế</div>
        <div class="oNhap"><asp:DropDownList ID="ddlTrangThai" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuGhe" runat="server" Text="Tạo thêm ghế khác sau khi tạo ghế này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>