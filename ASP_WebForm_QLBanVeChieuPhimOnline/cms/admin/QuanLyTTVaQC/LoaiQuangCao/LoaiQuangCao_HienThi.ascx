<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoaiQuangCao_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.LoaiQuangCao.LoaiQuangCao_HienThi" %>
<div class="head">
    Loại quảng cáo
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLTTVaQC&submodul=LoaiQuangCao&thaotac=ThemMoi">Thêm loại quảng cáo mới</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
   <table class="tbDinhDang">
       <tr>
           <th class="cotMa">Mã</th>
           <th class="cotTen">Tên loại quảng cáo</th>
           <th class="cotCongCu">Công cụ</th>
       </tr>
       <asp:Literal ID="ltrLoaiQuangCao" runat="server"></asp:Literal>
   </table>
</div>
<script type="text/javascript">
    function XoaLoaiQuangCao(MaLoaiQuangCao) {
        if (confirm("Bạn chắc chắn muốn xóa loại quảng cáo này?")) {
            //Viết code xóa loại quảng cáo tại đây

            $.post("cms/admin/QuanLyTTVaQC/LoaiQuangCao/Ajax/LoaiQuangCao.aspx",
                {
                    "ThaoTac": "XoaLoaiQuangCao",
                    "MaLoaiQuangCao": MaLoaiQuangCao
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaLoaiQuangCao).slideUp();

                    }
                });
        }
    }
</script>