<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DinhDang_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.DinhDang.DinhDang_HienThi" %>
<div class="head">
    Định dạng phim
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLPhim&submodul=DinhDang&thaotac=ThemMoi">Thêm định dạng mới</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
   <table class="tbDinhDang">
       <tr>
           <th class="cotMa">Mã</th>
           <th class="cotTen">Tên định dạng</th>
           <th class="cotCongCu">Công cụ</th>
       </tr>
       <asp:Literal ID="ltrDinhDang" runat="server"></asp:Literal>
   </table>
</div>
<script type="text/javascript">
    function XoaDinhDang(MaDinhDang) {
        if (confirm("Bạn chắc chắn muốn xóa định dạng này?")) {
            //Viết code xóa định dạng tại đây

            $.post("cms/admin/QuanLyPhim/DinhDang/Ajax/DinhDang.aspx",
                {
                    "ThaoTac": "XoaDinhDang",
                    "MaDinhDang": MaDinhDang
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaDinhDang).slideUp();

                    }
                });
        }
    }
</script>