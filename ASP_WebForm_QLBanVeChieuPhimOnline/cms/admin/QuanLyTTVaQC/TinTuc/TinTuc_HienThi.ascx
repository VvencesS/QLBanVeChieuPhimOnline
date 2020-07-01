<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinTuc_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.TinTuc.TinTuc_HienThi" %>
<div class="head">
    Các tin tức đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLTTVaQC&submodul=TinTuc&thaotac=ThemMoi">Thêm mới tin tức</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tiêu đề</th>
            <th class="cotTen">Tóm tắt tin</th>
            <th class="cotAnh">Ảnh đại diện</th>
            <th class="cotTen">Loại tin tức</th>
            <th class="cotNgayTao">Ngày thêm</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrTinTuc" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaTinTuc(MaTinTuc) {
        if (confirm("Bạn chắc chắn muốn xóa tin tức này")) {
            //Viết code xóa danh mục tại đây

            $.post("cms/admin/QuanLyTTVaQC/TinTuc/Ajax/TinTuc.aspx",
                {
                    "ThaoTac": "XoaTinTuc",
                    "MaTinTuc": MaTinTuc
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaTinTuc).slideUp();

                    }
                });
        }
    }
</script>