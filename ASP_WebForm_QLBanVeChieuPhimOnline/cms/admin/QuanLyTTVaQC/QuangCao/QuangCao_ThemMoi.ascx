<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuangCao_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.QuangCao.QuangCao_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa quảng cáo
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
    <div class="thongTin">
        <div class="tenTruong">Chọn loại quảng cáo</div>
        <div class="oNhap"><asp:DropDownList ID="ddlLoaiQC" runat="server"></asp:DropDownList></div>
    </div>   
    <div class="thongTin">
        <div class="tenTruong">Ảnh quảng cáo</div>
        <div class="oNhap">
            <div>
                <asp:HiddenField ID="hdTenAnhQCCu" runat="server" />
                <asp:Literal ID="ltrAnhQC" runat="server"></asp:Literal>
            </div>
            <asp:FileUpload ID="flAnhQC" runat="server" />
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuQuangCao" runat="server" Text="Tạo thêm quảng cáo khác sau khi tạo quảng cáo này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>