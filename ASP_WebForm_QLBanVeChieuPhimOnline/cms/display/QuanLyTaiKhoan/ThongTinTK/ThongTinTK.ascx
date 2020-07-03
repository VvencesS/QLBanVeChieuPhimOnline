<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongTinTK.ascx.cs" Inherits="ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan.ThongTinTK.ThongTinTK" %>
<div id="tab-info" class="tab-pane">
    <div class="avatar">
        <div class="fileinput">
            <img src="image/image.png" alt="">
        </div>
        <div class="edit">
            <span class="upload">tải ảnh lên</span>
            <span class="saved">Lưu ảnh</span>
        </div>
    </div>
    <div class="form-group">
        <div class="name">
            <label class="control-label">
                <span>*</span>&nbsp;Họ tên
            </label>
            <input type="text" value="Nguyễn Ngọc Quý" class="form-control" placeholder="Họ tên">
        </div>
        <div class="email">
            <label class="control-label">
                <span>*</span>&nbsp;Email
            </label>
            <div class="input-icon">
                <i class="fa fa-envelope"></i>
                <input type="text" value="quycua4@gmail.com" class="form-control" placeholder="email">
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="SDT">
            <label class="control-label">
                <span>*</span>&nbsp;Số điện thoại
            </label>
            <div class="input-icon">
                <i class="fas fa-phone-square-alt"></i>
                <input type="text" value="0344564856" class="form-control" placeholder="Số điện thoại">
            </div>
        </div>
        <div class="CMND">
            <label class="control-label">
                <span>*</span>&nbsp;CMND/Hộ chiếu
            </label>
            <div class="input-icon">
                <i class="far fa-id-card"></i>
                <input type="text" value="001099003133" class="form-control" placeholder="CMND/Hộ chiếu">
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="date">
            <label class="control-label">
                <span>*</span>&nbsp;Ngày sinh
            </label>
            <div class="input-icon">
                <i class="far fa-calendar-alt"></i>
                <input type="text" value="15/06/1999" class="form-control" placeholder="Ngày sinh"
                    data-date-format="dd/mm/yyyy">
            </div>
        </div>
        <div class="sex">
            <label class="control-label">
                Giới tính
            </label>
            <div class="input-icon">
                <i class="fa fa-male"></i>
                <select name="" id="cboSex" class="form-control" data-placeholder="Giới tính" tabindex="1">
                    <option value="0" class="option-item">Giới tính</option>
                    <option value="1" class="option-item">Nam</option>
                    <option value="2" class="option-item">Nữ</option>
                    <option value="3" class="option-item">Khác</option>
                </select>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="city">
            <label class="control-label">
                Tỉnh/Thành phố
            </label>
            <div class="input-icon">
                <select name="" id="cboCity" class="form-control" data-placeholder="Tỉnh/Thành phố" tabindex="1">
                    <option value="0" class="option-item">Tỉnh/Thành phố</option>
                    <option value="1" class="option-item">Tỉnh Sơn La</option>
                    <option value="2" class="option-item">Tỉnh Cao Bằng</option>
                    <option value="3" class="option-item">Tỉnh Trà Vinh</option>
                    <option value="4" class="option-item">Tỉnh Cà Mau</option>
                    <option value="5" class="option-item">Tỉnh Kon Tum</option>
                    <option value="6" class="option-item">Tỉnh Bà Rịa - Vũng Tàu</option>
                    <option value="7" class="option-item">Tỉnh Khánh Hòa</option>
                    <option value="8" class="option-item">Tỉnh Bắc Giang</option>
                    <option value="9" class="option-item">Tỉnh Quảng Trị</option>
                    <option value="10" class="option-item">Tỉnh Lạng Sơn</option>
                    <option value="11" class="option-item">Tỉnh Hải Dương</option>
                    <option value="12" class="option-item">Tỉnh Vĩnh Long</option>
                    <option value="13" class="option-item">Tỉnh Nghệ An</option>
                    <option value="14" class="option-item">Tỉnh Hà Nam</option>
                    <option value="15" class="option-item">Tỉnh Thừa Thiên Huế</option>
                    <option value="16" class="option-item">Tỉnh Bạc Liêu</option>
                    <option value="17" class="option-item">Tỉnh Thái Bình</option>
                    <option value="18" class="option-item">Tỉnh Lai Châu</option>
                    <option value="19" class="option-item">Tỉnh Quảng Bình</option>
                    <option value="20" class="option-item">Tỉnh Vĩnh Phúc</option>
                    <option value="21" class="option-item">Tỉnh Tuyên Quang</option>
                    <option value="22" class="option-item">Tỉnh Ninh Bình</option>
                    <option value="23" class="option-item">Tỉnh Lâm Đồng</option>
                    <option value="24" class="option-item">Tỉnh Kiên Giang</option>
                    <option value="25" class="option-item">Tỉnh Yên Bái</option>
                    <option value="26" class="option-item">Tỉnh Lào Cai</option>
                    <option value="27" class="option-item">Tỉnh Hà Giang</option>
                    <option value="28" class="option-item">Tỉnh Long An</option>
                    <option value="29" class="option-item">Tỉnh Thanh Hóa</option>
                    <option value="30" class="option-item">Tỉnh Quảng Nam</option>
                    <option value="31" class="option-item">Tỉnh Bình Dương</option>
                    <option value="32" class="option-item">Tỉnh Phú Yên</option>
                    <option value="33" class="option-item">Tỉnh Quảng Ngãi</option>
                    <option value="34" class="option-item">Thành phố Đà Nẵng</option>
                    <option value="35" class="option-item">Tỉnh Bắc Kạn</option>
                    <option value="36" class="option-item">Tỉnh Bắc Ninh</option>
                    <option value="37" class="option-item">Tỉnh Đắk Nông</option>
                    <option value="38" class="option-item">Thành phố Cần Thơ</option>
                    <option value="39" class="option-item">Tỉnh Đắk Lắk</option>
                    <option value="40" class="option-item">Tỉnh Phú Thọ</option>
                    <option value="41" class="option-item">Thành phố Hồ Chí Minh</option>
                    <option value="42" class="option-item">Thành phố Hải Phòng</option>
                    <option value="43" class="option-item">Tỉnh Gia Lai</option>
                    <option value="44" class="option-item">Tỉnh Hưng Yên</option>
                    <option value="45" class="option-item">Tỉnh Tây Ninh</option>
                    <option value="46" class="option-item">Tỉnh Thái Nguyên</option>
                    <option value="47" class="option-item">Tỉnh Hậu Giang</option>
                    <option value="48" class="option-item">Tỉnh Bình Định</option>
                    <option value="49" class="option-item">Tỉnh Nam Định</option>
                    <option value="50" class="option-item">Tỉnh Bình Thuậ</option>
                    <option value="51" class="option-item">Tỉnh Bến Tre</option>
                    <option value="52" class="option-item">Tỉnh Quảng Ninh</option>
                    <option value="53" class="option-item">Tỉnh Hà Tĩnh</option>
                    <option value="54" class="option-item">Tỉnh Đồng Nai</option>
                    <option value="55" class="option-item">Tỉnh An Giang</option>
                    <option value="56" class="option-item">Tỉnh Bình Phước</option>
                    <option value="57" class="option-item">Tỉnh Đồng Tháp</option>
                    <option value="58" class="option-item">Thành phố Hà Nội</option>
                    <option value="59" class="option-item">Tỉnh Sóc Trăng</option>
                    <option value="60" class="option-item">Tỉnh Ninh Thuật</option>
                    <option value="61" class="option-item">Tỉnh Hòa Bình</option>
                    <option value="62" class="option-item">Tỉnh Điện Biên</option>
                </select>
            </div>
        </div>
        <div class="country">
            <label class="control-label">
                Quận/Huyện
            </label>
            <div class="input-icon">
                <select name="" id="cboCountry" class="form-control" data-placeholder="Quận/Huyện" tabindex="1">
                </select>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="address">
            <label class="control-label">
                Địa chỉ
            </label>
            <textarea class="form-control" id="txtDiaChi" placeholder="Địa chỉ">Lương Quy, Xuân Nộn</textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="forget-pass">
            <a href="#">Đổi mật khẩu?</a>
        </div>
    </div>
    <div class="form-group">
        <div class="text-center">
            <button class="btn">
                Cập nhật
            </button>
        </div>
    </div>
</div>
