<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SoGhe_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.SoGhe.SoGhe_HienThi" %>
<div class="head">
    Các số ghế đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLLichChieu&submodul=SoGhe&thaotac=ThemMoi">Thêm một số ghế mới</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
   <table class="tbMau">
       <tr>
           <th class="cotMa">Số ghế</th>
           <th class="cotTen">Số hàng</th>
           <th class="cotTen">Số cột</th>
           <th class="cotCongCu">Công cụ</th>
       </tr>
       <asp:Literal ID="ltrSoGhe" runat="server"></asp:Literal>
   </table>
</div>
<script type="text/javascript">
    function XoaMau(MauID) {
        if (confirm("Bạn chắc chắn muốn xóa số ghế này")) {
            //Viết code xóa số ghế tại đây

            $.post("cms/admin/QuanLyLichChieu/SoGhe/Ajax/SoGhe.aspx",
                {
                    "ThaoTac": "XoaSoGhe",
                    "SoGhe": SoGhe
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + SoGhe).slideUp();

                    }
                });
        }
    }
</script>