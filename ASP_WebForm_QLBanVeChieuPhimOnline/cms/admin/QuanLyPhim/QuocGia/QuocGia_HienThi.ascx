<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuocGia_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.QuocGia.QuocGia_HienThi" %>
<div class="head">
    Quốc gia
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLPhim&submodul=QuocGia&thaotac=ThemMoi">Thêm quốc gia mới</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
   <table class="tbQuocGia">
       <tr>
           <th class="cotMa">Mã</th>
           <th class="cotTen">Tên quốc gia</th>
           <th class="cotCongCu">Công cụ</th>
       </tr>
       <asp:Literal ID="ltrQuocGia" runat="server"></asp:Literal>
   </table>
</div>
<script type="text/javascript">
    function XoaQuocGia(MaQuocGia) {
        if (confirm("Bạn chắc chắn muốn xóa quốc gia này?")) {
            //Viết code xóa định dạng tại đây

            $.post("cms/admin/QuanLyPhim/QuocGia/Ajax/QuocGia.aspx",
                {
                    "ThaoTac": "XoaQuocGia",
                    "MaQuocGia": MaQuocGia
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaQuocGia).slideUp();

                    }
                });
        }
    }
</script>