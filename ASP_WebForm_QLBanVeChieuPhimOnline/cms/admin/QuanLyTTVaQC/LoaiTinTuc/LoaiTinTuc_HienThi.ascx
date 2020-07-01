<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoaiTinTuc_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.LoaiTinTuc.LoaiTinTuc_HienThi" %>
<div class="head">
    Loại tin tức
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLTTVaQC&submodul=LoaiTinTuc&thaotac=ThemMoi">Thêm loại tin tức mới</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
   <table class="tbDinhDang">
       <tr>
           <th class="cotMa">Mã</th>
           <th class="cotTen">Tên loại tin tức</th>
           <th class="cotCongCu">Công cụ</th>
       </tr>
       <asp:Literal ID="ltrLoaiTinTuc" runat="server"></asp:Literal>
   </table>
</div>
<script type="text/javascript">
    function XoaLoaiTinTuc(MaLoaiTinTuc) {
        if (confirm("Bạn chắc chắn muốn xóa loại tin tức này?")) {
            //Viết code xóa loại tin tức tại đây

            $.post("cms/admin/QuanLyTTVaQC/LoaiTinTuc/Ajax/LoaiTinTuc.aspx",
                {
                    "ThaoTac": "XoaLoaiTinTuc",
                    "MaLoaiTinTuc": MaLoaiTinTuc
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaLoaiTinTuc).slideUp();

                    }
                });
        }
    }
</script>