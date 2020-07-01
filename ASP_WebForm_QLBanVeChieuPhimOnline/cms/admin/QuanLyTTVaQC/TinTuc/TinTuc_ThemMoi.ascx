<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinTuc_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.TinTuc.TinTuc_ThemMoi" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<div class="head">
    Thêm mới, chỉnh sửa tin tức
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>   
    <div class="thongTin">
        <div class="tenTruong">Tiêu đề tin</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbTieuDeTin" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="tbTieuDeTin" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Tóm tắt tin</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbTomTatTin" runat="server" TextMode="MultiLine"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="tbTomTatTin" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Chọn loại tin tức</div>
        <div class="oNhap"><asp:DropDownList ID="ddlLoaiTinTuc" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Ảnh Đại Diện</div>
        <div class="oNhap">
            <div>
                <asp:HiddenField ID="hdTenAnhDaiDienCu" runat="server" />
                <asp:Literal ID="ltrAnhDaiDien" runat="server"></asp:Literal>
            </div>
            <asp:FileUpload ID="flAnhDaiDien" runat="server" />
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Nội dung tin tức</div>
        <div class="oNhap">            
            <%--<asp:TextBox ID="tbMoTa" TextMode="MultiLine" runat="server" Height="150px"></asp:TextBox>--%>
            <CKEditor:CKEditorControl ID="tbNoiDung" runat="server" FilebrowserImageBrowseUrl="ckeditor/ckfinder/ckfinder.aspx?type=Images&path=pic"></CKEditor:CKEditorControl>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuTinTuc" runat="server" Text="Tạo thêm tin tức khác sau khi tạo tin tức này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>