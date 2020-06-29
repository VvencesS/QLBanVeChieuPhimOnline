<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Phim_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.Phim.Phim_HienThi" %>
<div class="head">
    Các phim đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLPhim&submodul=Phim&thaotac=ThemMoi">Thêm mới phim</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbPhim">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên phim</th>
            <th class="cotAnh">Ảnh đại diện</th>
            <th class="cotTen">Thể loại</th>
            <th class="cotTen">Định dạng</th>
            <th class="cotTen">Hãng phim</th>
            <th class="cotTen">Quốc gia</th>
            <th class="cotTen">Thời lượng</th>
            <th class="cotTen">Đạo diễn</th>
            <th class="cotNgayTao">Khởi chiếu</th>
            <th class="cotNgayTao">Kết thúc</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrPhim" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaPhim(MaPhim) {
        if (confirm("Bạn chắc chắn muốn xóa phim này")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/QuanLyPhim/Phim/Ajax/Phim.aspx",
                {
                    "ThaoTac": "XoaPhim",
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