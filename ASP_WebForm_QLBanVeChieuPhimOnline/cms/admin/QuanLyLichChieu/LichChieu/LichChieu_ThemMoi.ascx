<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LichChieu_ThemMoi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.LichChieu.LichChieu_ThemMoi" %>
<div class="head">
    Thêm mới, chỉnh sửa lịch chiếu
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
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap"><asp:CheckBox ID="cbThemNhieuLichChieu" runat="server" Text="Tạo thêm lịch chiếu khác sau khi tạo lịch chiếu này"/></div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">&nbsp;</div>
        <div class="oNhap">
            <asp:Button ID="btThemMoi" runat="server" Text="Thêm mới" CssClass="btThemMoi" OnClick="btThemMoi_Click" />
            <asp:Button ID="btHuy" runat="server" Text="Hủy" CssClass="btHuy" OnClick="btHuy_Click" CausesValidation="false" />
        </div>
    </div>
</div>
<%--<script type="text/javascript">
    function LayGioChieuTheoNgayChieu(MaPhim) {
        if (confirm("Bạn chắc chắn muốn xóa lịch chiếu này?")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/QuanLyLichChieu/LichChieu/Ajax/LichChieu.aspx",
                {
                    "ThaoTac": "XoaLichChieu",
                    "MaPhim": MaPhim
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaPhim).slideUp();

                    }
                });
        }
    }
</script>--%>