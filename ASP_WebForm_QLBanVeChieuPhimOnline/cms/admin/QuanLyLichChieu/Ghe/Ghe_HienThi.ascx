<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ghe_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Ghe.Ghe_HienThi" %>
<div class="head">
    Các ghế đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLLichChieu&submodul=Ghe&thaotac=ThemMoi">Thêm mới Ghế</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">số ghế</th>
            <th class="cotTen">Loại ghế</th>
            <th class="cotTen">Phòng</th>
            <th class="cotTen">Trạng thái</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrGhe" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaGhe(MaGhe) {
        if (confirm("Bạn chắc chắn muốn xóa ghế này?")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/QuanLyLichChieu/Ghe/Ajax/Ghe.aspx",
                {
                    "ThaoTac": "XoaGhe",
                    "MaGhe": MaGhe
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaGhe).slideUp();

                    }
                });
        }
    }
</script>