<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThanhVien_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan.ThanhVien.ThanhVien_HienThi" %>
<div class="head">
    Các thành viên đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="/Admin.aspx?modul=QLTaiKhoan&submodul=ThanhVien&thaotac=ThemMoi">Thêm mới thành viên</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbThanhVien">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotAnh">Ảnh đại diện</th>
            <th class="cotTen">Tên thành viên</th>
            <th class="cotTen">Giới tính</th>
            <th class="cotAnh">Email</th>
            <th class="cotTen">SĐT</th>
            <th class="cotTen">CMT</th>
            <th class="cotNgayTao">Ngày sinh</th>
            <th class="cotTen">Xã/phường</th>
            <th class="cotTen">Quận/huyện</th>
            <th class="cotTen">Tỉnh/Thành phố</th>
            <th class="cotTen">Trạng thái</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrThanhVien" runat="server"></asp:Literal>
    </table>
</div>

<script type="text/javascript">
    function XoaThanhVien(MaThanhVien) {
        if (confirm("Bạn chắc chắn muốn xóa thành viên này?")) {
            //Viết code xóa thành viên tại đây

            $.post("cms/admin/QuanLyTaiKhoan/ThanhVien/Ajax/ThanhVien.aspx",
                {
                    "ThaoTac": "XoaThanhVien",
                    "MaThanhVien": MaThanhVien
                },
                function (data, status) {
                    //alert("Data :" + data + "\n Status :" + status);
                    if (data == 1) {
                        //thực hiện thành công => ẩn dòng vừa xóa đi
                        $("#maDong_" + MaThanhVien).slideUp();

                    }
                });
        }
    }
</script>