<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ve_HienThi.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Ve.Ve_HienThi" %>
<div class="head">
    Các vé đã tạo. 
    <div class="fr ter"><a class="btThemMoi" href="#">Thêm mới vé</a></div>
    <div class="cb"></div>
</div>
<div class="KhungChuaBang">
    <table class="tbDanhMuc">
        <tr>
            <th class="cotMa">Mã</th>
            <th class="cotTen">Tên phim</th>
            <th class="cotAnh">Ảnh đại diện</th>
            <th class="cotTen">Định dạng</th>
            <th class="cotTen">Thời lượng</th>
            <th class="cotTen">Phòng</th>
            <th class="cotNgayTao">Ngày chiếu</th>
            <th class="cotTen">Giờ chiếu</th>
            <th class="cotTen">Số ghế</th>
            <th class="cotTen">Loại ghế/th>
            <th class="cotDonGia">Giá</th>
            <th class="cotTen">Trạng thái</th>
            <th class="cotCongCu">Công cụ</th>
        </tr>
        <asp:Literal ID="ltrVe" runat="server"></asp:Literal>
    </table>
</div>