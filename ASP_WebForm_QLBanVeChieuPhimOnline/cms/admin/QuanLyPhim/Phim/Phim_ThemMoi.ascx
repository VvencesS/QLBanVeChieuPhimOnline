<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Phim_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.Phim.Phim_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa phim
</div>
<div class="FormThemMoi">
    <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>   
    <div class="thongTin">
        <div class="tenTruong">Tên phim</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbTenPhim" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="tbTenPhim" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
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
        <div class="tenTruong">Chọn thể loại</div>
        <div class="oNhap"><asp:DropDownList ID="ddlTheLoai" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Chọn định dạng</div>
        <div class="oNhap"><asp:DropDownList ID="ddlDinhDang" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Chọn hãng phim</div>
        <div class="oNhap"><asp:DropDownList ID="ddlHangPhim" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Chọn quốc gia</div>
        <div class="oNhap"><asp:DropDownList ID="ddlQuocGia" runat="server"></asp:DropDownList></div>
    </div> 
    <div class="thongTin">
        <div class="tenTruong">Chọn nhân viên thêm</div>
        <div class="oNhap"><asp:DropDownList ID="ddlNhanVien" runat="server"></asp:DropDownList></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Thời lượng</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbThoiLuong" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="tbThoiLuong" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Đạo diễn</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbDaoDien" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="tbDaoDien" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Ngày khởi chiếu</div>
        <div class="oNhap">
            <asp:TextBox ID="tbKhoiChieu" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Ngày kết thúc</div>
        <div class="oNhap">
            <asp:TextBox ID="tbKetThuc" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Nội dung phim</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbNoiDung" TextMode="MultiLine" runat="server" Height="150px"></asp:TextBox>
            <%--<CKEditor:CKEditorControl ID="tbMoTa" runat="server" FilebrowserImageBrowseUrl="ckeditor/ckfinder/ckfinder.aspx?type=Images&path=pic"></CKEditor:CKEditorControl>--%>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">Trailer</div>
        <div class="oNhap">            
            <asp:TextBox ID="tbTrailer" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="tbTrailer" Display="Dynamic" SetFocusOnError="True" ForeColor="Red" ></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuPhim" runat="server" Text="Tạo thêm phim khác sau khi tạo phim này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>