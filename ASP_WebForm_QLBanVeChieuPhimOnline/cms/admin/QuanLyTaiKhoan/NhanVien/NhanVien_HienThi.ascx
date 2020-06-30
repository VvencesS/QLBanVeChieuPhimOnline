<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NhanVien_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan.NhanVien.NhanVien_HienThi" %>
<div class="head">
    Các nhân viên đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLTaiKhoan&submodul=NhanVien&thaotac=ThemMoi">Thêm mới nhân viên</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbNhanVien">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên nhân viên</th>
            <th class="cotTen">Giới tính</th>
            <th class="cotAnh">Email</th>
            <th class="cotTen">SĐT</th>
            <th class="cotTen">CMT</th>
            <th class="cotNgayTao">Ngày sinh</th>
            <th class="cotTen">Username</th>
            <th class="cotTen">Xã/phường</th>
            <th class="cotTen">Quận/huyện</th>
            <th class="cotTen">Tỉnh/Thành phố</th>
            <th class="cotTen">Làm tại rạp</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrNhanVien" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaNhanVien(MaNhanVien) {
        if (confirm("Bạn chắc chắn muốn xóa nhân viên này?")) {
            //Viết code xóa nhân viên tại đây

            $.post("cms/admin/QuanLyTaiKhoan/NhanVien/Ajax/NhanVien.aspx",
                {
                    "ThaoTac": "XoaNhanVien",
                    "MaNhanVien": MaNhanVien
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaNhanVien).slideUp();

                    }
                });
        }
    }
</script>