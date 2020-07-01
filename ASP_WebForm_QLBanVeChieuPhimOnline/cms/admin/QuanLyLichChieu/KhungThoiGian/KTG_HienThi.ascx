<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="KTG_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.KhungThoiGian.KTG_HienThi" %>
<div class="head">
    Các khung thời gian đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLLichChieu&submodul=KTG&thaotac=ThemMoi">Thêm mới khung thời gian</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotNgayTao">Ngày chiếu</th>
            <th class="cotNgayTao">Giờ chiếu</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrKTG" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaKTG(MaKTG) {
        if (confirm("Bạn chắc chắn muốn xóa khung thời gian này")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/KhungThoiGian/KhungThoiGian/Ajax/KhungThoiGian.aspx",
                {
                    "ThaoTac": "XoaKTG",
                    "MaKTG": MaKTG
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaKTG).slideUp();

                    }
                });
        }
    }
</script>