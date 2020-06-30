<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NhanVien_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan.NhanVien.NhanVien_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa nhân viên
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>   
    <div class="thongTin">
        <div class="tenTruong">Tên nhân viên</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbTenNhanVien" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="tbTenNhanVien" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div><div class="thongTin">
        <div class="tenTruong">Giới tính</div>
        <div class="oNhap"><asp:DropDownList ID="ddlGioiTinh" runat="server">
            <asp:ListItem>Nam</asp:ListItem>
            <asp:ListItem>Nữ</asp:ListItem>
            </asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Email</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="tbEmail" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Số điện thoại</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbSDT" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="tbSDT" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Chứng minh thư</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbCMT" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="tbCMT" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Ngày sinh</div>
        <div class="oNhap">
            <asp:TextBox ID="tbNgaySinh" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Chọn Tỉnh/Thành phố</div>
        <div class="oNhap"><asp:DropDownList ID="ddlTinhThanhPho" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Chọn Quận/Huyện</div>
        <div class="oNhap"><asp:DropDownList ID="ddlQuanHuyen" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Chọn Xã/Phường</div>
        <div class="oNhap"><asp:DropDownList ID="ddlXaPhuong" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Làm tại rạp</div>
        <div class="oNhap"><asp:DropDownList ID="ddlRap" runat="server"></asp:DropDownList></div>
    </div> 
    <div class="thongTin">
        <div class="tenTruong">Username</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="tbUsername" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Mật khẩu</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbMatKhau" runat="server" TextMode="Password"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="tbMatKhau" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuNhanVien" runat="server" Text="Tạo thêm nhân viên khác sau khi tạo nhân viên này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>