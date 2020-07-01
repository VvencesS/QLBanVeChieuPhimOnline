<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LichChieu_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.LichChieu.LichChieu_HienThi" %>
<div class="head">
    Các lịch chiếu đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLLichChieu&submodul=LichChieu&thaotac=ThemMoi">Thêm mới lịch chiếu</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotTen">Tên phim</th>
            <th class="cotAnh">Ảnh đại diện phim</th>
            <th class="cotTen">Định dạng</th>
            <th class="cotTen">Phòng</th>
            <th class="cotTen">Ngày chiếu</th>
            <th class="cotTen">Giờ chiếu</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrLichChieu" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaLichChieu(MaPhim) {
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
</script>