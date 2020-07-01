<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Phong_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Phong.Phong_HienThi" %>
<div class="head">
    Các Phòng đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLLichChieu&submodul=Phong&thaotac=ThemMoi">Thêm mới Phòng</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên Phòng</th>
            <th class="cotSoLuong">Số hàng max</th>
            <th class="cotSoLuong">Số cột max</th>
            <th class="cotTen">Định dạng</th>
            <th class="cotTen">Thuộc rạp</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrPhong" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaPhong(MaPhong) {
        if (confirm("Bạn chắc chắn muốn xóa phòng này?")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/QuanLyLichChieu/Phong/Ajax/Phong.aspx",
                {
                    "ThaoTac": "XoaPhong",
                    "MaPhong": MaPhong
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaPhong).slideUp();

                    }
                });
        }
    }
</script>