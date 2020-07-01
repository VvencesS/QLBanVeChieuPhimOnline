<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="KTG_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.KhungThoiGian.KTG_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa khung thời gian
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
    
    <div class="thongTin">
        <div class="tenTruong">Ngày chiếu</div>
        <div class="oNhap">
            <asp:TextBox ID="tbNgayChieu" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Giờ chiếu</div>
        <div class="oNhap">
            <asp:TextBox ID="tbGioChieu" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="tbGioChieu" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuKTG" runat="server" Text="Tạo thêm khung thời gian khác sau khi tạo khung thời gian này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>