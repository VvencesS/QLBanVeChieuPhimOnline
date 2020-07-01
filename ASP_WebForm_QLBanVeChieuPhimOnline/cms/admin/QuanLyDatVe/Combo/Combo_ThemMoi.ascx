<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Combo_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Combo.Combo_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa Combo
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
    <div class="thongTin">
        <div class="tenTruong">Tên Combo</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbTenCombo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="tbTenCombo" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Mô tả Combo</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbMoTa" TextMode="MultiLine" runat="server" Height="100px"></asp:TextBox>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Giá bán</div>
        <div class="oNhap">
            <asp:TextBox ID="tbGia" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Giá bán phải nhập kiểu số" ControlToValidate="tbGia" Display="Dynamic" SetFocusOnError="True" ValidationExpression="(\d)*" ForeColor="Red"  ></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuCombo" runat="server" Text="Tạo thêm Combo khác sau khi tạo Combo này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>