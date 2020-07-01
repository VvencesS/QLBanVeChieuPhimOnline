<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Phong_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Phong.Phong_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa phòng
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
    <div class="thongTin">
        <div class="tenTruong">Tên phòng</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbtenPhong" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="tbTenPhong" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Số hàng max</div>
        <div class="oNhap">
            <asp:TextBox ID="tbSoHangMax" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Số lượng phải nhập kiểu số" ControlToValidate="tbSoHangMax" Display="Dynamic" SetFocusOnError="True" ValidationExpression="(\d)*" ForeColor="Red"  ></asp:RegularExpressionValidator>
        </div>
    </div>  
    <div class="thongTin">
        <div class="tenTruong">Số cột max</div>
        <div class="oNhap">
            <asp:TextBox ID="tbSoCotMax" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Số lượng phải nhập kiểu số" ControlToValidate="tbSoCotMax" Display="Dynamic" SetFocusOnError="True" ValidationExpression="(\d)*" ForeColor="Red"  ></asp:RegularExpressionValidator>
        </div>
    </div> 
    <div class="thongTin">
        <div class="tenTruong">Định dạng của phòng</div>
        <div class="oNhap"><asp:DropDownList ID="ddlDinhDang" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Phòng thuộc rạp</div>
        <div class="oNhap"><asp:DropDownList ID="ddlRap" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuPhong" runat="server" Text="Tạo thêm phòng khác sau khi tạo phòng này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>