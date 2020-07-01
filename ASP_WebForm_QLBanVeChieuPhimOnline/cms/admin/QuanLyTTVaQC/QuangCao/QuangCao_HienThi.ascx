<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuangCao_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.QuangCao.QuangCao_HienThi" %>
<div class="head">
    Các quảng cáo đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLTTVaQC&modulphu=QuangCao&thaotac=ThemMoi">Thêm mới quảng cáo</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Loại quảng cáo</th>
            <th class="cotAnh">Ảnh quảng cáo</th>
            <th class="cotNgayTao">Ngày tạo</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrQuangCao" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaQuangCao(MaQuangCao) {
        if (confirm("Bạn chắc chắn muốn xóa quảng cáo này")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/QuanLyTTVaQC/QuangCao/Ajax/QuangCao.aspx",
                {
                    "ThaoTac": "XoaQuangCao",
                    "MaQuangCao": MaQuangCao
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaQuangCao).slideUp();

                    }
                });
        }
    }
</script>