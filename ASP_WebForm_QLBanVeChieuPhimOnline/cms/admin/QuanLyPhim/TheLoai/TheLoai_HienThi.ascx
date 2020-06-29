<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TheLoai_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.TheLoai.TheLoai_HienThi" %>
<div class="head">
    Thể loại
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLPhim&submodul=TheLoai&thaotac=ThemMoi">Thêm thể loại mới</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
   <table class="tbTheLoai">
       <tr>
           <th class="cotMa">Mã</th>
           <th class="cotTen">Tên thể loại</th>
           <th class="cotCongCu">Công cụ</th>
       </tr>
       <asp:Literal ID="ltrTheLoai" runat="server"></asp:Literal>
   </table>
</div>
<script type="text/javascript">
    function XoaTheLoai(MaTheLoai) {
        if (confirm("Bạn chắc chắn muốn xóa định dạng này?")) {
            //Viết code xóa định dạng tại đây

            $.post("cms/admin/QuanLyPhim/TheLoai/Ajax/TheLoai.aspx",
                {
                    "ThaoTac": "XoaTheLoai",
                    "MaTheLoai": MaTheLoai
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaTheLoai).slideUp();

                    }
                });
        }
    }
</script>