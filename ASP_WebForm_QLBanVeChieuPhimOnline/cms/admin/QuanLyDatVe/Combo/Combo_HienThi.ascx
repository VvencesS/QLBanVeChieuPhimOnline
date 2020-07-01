<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Combo_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Combo.Combo_HienThi" %>
<div class="head">
    Các combo đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLDatVe&submodul=Combo&thaotac=ThemMoi">Thêm mới combo</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên combo</th>
            <th class="cotTen">Mô tả</th>
            <th class="cotDonGia">Đơn Giá</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrCombo" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaCombo(MaCombo) {
        if (confirm("Bạn chắc chắn muốn xóa combo này?")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/QuanLyDatVe/Combo/Ajax/Combo.aspx",
                {
                    "ThaoTac": "XoaCombo",
                    "MaCombo": MaCombo
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaCombo).slideUp();

                    }
                });
        }
    }
</script>