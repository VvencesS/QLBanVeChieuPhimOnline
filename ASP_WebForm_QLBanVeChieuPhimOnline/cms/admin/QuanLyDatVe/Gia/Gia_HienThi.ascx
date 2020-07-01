<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Gia_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Gia.Gia_HienThi" %>
<div class="head">
    Các giá đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLDatVe&submodul=Gia&thaotac=ThemMoi">Thêm một giá mới</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
   <table class="tbDanhMuc">
       <tr>
           <th class="cotMa">Mã</th>
           <th class="cotTen">Đơn giá</th>
           <th class="cotCongCu">Công cụ</th>
       </tr>
       <asp:Literal ID="ltrGia" runat="server"></asp:Literal>
   </table>
</div>
<script type="text/javascript">
    function XoaGia(MaGia) {
        if (confirm("Bạn chắc chắn muốn xóa giá này?")) {
            //Viết code xóa giá tại đây

            $.post("cms/admin/QuanLyDatVe/Gia/Ajax/Gia.aspx",
                {
                    "ThaoTac": "XoaGia",
                    "MaGia": MaGia
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaGia).slideUp();

                    }
                });
        }
    }
</script>