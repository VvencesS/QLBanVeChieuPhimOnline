<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThanhVien_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan.ThanhVien.ThanhVien_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa thành viên
</div>
<div class="FormThemMoi">
    <asp:HiddenField ID="MatKhauCu" runat="server" />
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>   
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
        <div class="tenTruong">Tên thành viên</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbTenThanhVien" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="tbTenThanhVien" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
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
        <div class="tenTruong">Trạng thái</div>
        <div class="oNhap"><asp:DropDownList ID="ddlTrangThai" runat="server">
            <asp:ListItem>Đã kích hoạt</asp:ListItem>
            <asp:ListItem>Chưa kích hoạt</asp:ListItem>
            </asp:DropDownList></div>
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
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuThanhVien" runat="server" Text="Tạo thêm thành viên khác sau khi tạo thành viên này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>