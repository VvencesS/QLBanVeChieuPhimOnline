<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Rap_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Rap.Rap_HienThi" %>
<div class="head">
    Các rạp đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLLichChieu&submodul=Rap&thaotac=ThemMoi">Thêm mới rạp</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên rạp</th>
            <th class="cotAnh">Ảnh đại diện</th>
            <th class="cotTen">Giới thiệu</th>
            <th class="cotTen">Địa chỉ</th>
            <th class="cotTen">Số điện thoại riêng</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrRap" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaRap(MaRap) {
        if (confirm("Bạn chắc chắn muốn xóa rạp này")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/QuanLyLichChieu/Rap/Ajax/Rap.aspx",
                {
                    "ThaoTac": "XoaRap",
                    "MaRap": MaRap
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaRap).slideUp();

                    }
                });
        }
    }
</script>