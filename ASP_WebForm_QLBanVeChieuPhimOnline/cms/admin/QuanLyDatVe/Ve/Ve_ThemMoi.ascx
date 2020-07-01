<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ve_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Ve.Ve_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa Ve
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
    <div class="thongTin">
        <div class="tenTruong">Phim</div>
        <div class="oNhap"><asp:DropDownList ID="ddlPhim" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Phòng</div>
        <div class="oNhap"><asp:DropDownList ID="ddlPhong" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Ngày chiếu</div>
        <div class="oNhap"><asp:DropDownList ID="ddlNgayChieu" runat="server" OnSelectedIndexChanged="ddlNgayChieu_SelectedIndexChanged"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Giờ chiếu</div>
        <div class="oNhap"><asp:DropDownList ID="ddlGioChieu" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Trạng thái</div>
        <div class="oNhap"><asp:DropDownList ID="ddlTrangThai" runat="server">
            <asp:ListItem>Đã thanh toán</asp:ListItem>
            <asp:ListItem>Chưa thanh toán</asp:ListItem>
            </asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuVe" runat="server" Text="Tạo thêm vé khác sau khi tạo vé này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>