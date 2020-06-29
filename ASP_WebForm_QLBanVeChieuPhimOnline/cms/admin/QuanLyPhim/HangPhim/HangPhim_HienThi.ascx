<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HangPhim_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.HangPhim.HangPhim_HienThi" %>
<div class="head">
    Hãng phim
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLPhim&submodul=HangPhim&thaotac=ThemMoi">Thêm hãng phim mới</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
   <table class="tbHangPhim">
       <tr>
           <th class="cotMa">Mã</th>
           <th class="cotTen">Tên hãng phim</th>
           <th class="cotCongCu">Công cụ</th>
       </tr>
       <asp:Literal ID="ltrHangPhim" runat="server"></asp:Literal>
   </table>
</div>
<script type="text/javascript">
    function XoaHangPhim(MaHangPhim) {
        if (confirm("Bạn chắc chắn muốn xóa định dạng này?")) {
            //Viết code xóa định dạng tại đây

            $.post("cms/admin/QuanLyPhim/HangPhim/Ajax/HangPhim.aspx",
                {
                    "ThaoTac": "XoaHangPhim",
                    "MaHangPhim": MaHangPhim
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaHangPhim).slideUp();

                    }
                });
        }
    }
</script>