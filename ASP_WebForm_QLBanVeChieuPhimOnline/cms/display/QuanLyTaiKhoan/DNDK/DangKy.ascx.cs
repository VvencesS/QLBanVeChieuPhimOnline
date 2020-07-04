using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan.DNDK
{
    public partial class DangKy : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtDangKy_Click(object sender, EventArgs e)
        {
            // Kiểm tra nếu chưa có ai đăng ký email này trong phần khách hàng thì mới cho thực hiện
            if (DaTonTaiEmail(tbEmail.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Email này đã được đăng ký. Bạn vui lòng điền email khác để đăng ký.');", true);
            }
            else
            {
                //Thực hiện thêm mới tài khoản khách hàng
                string matkhau = App_Code.MaHoa.MaHoaMD5(tbMatKhau.Text);
                bool gt = (ddlGioiTinh.SelectedValue == "Nam") ? true : false;
                App_Code.database.QuanLyTaiKhoan.ThanhVien.ThanhVien_Inser("", tbHoTen.Text.Trim(), tbEmail.Text.Trim(), tbSDT.Text.Trim(), "", gt, DateTime.Parse(tbNgaySinh.Text.Trim()), matkhau, int.Parse(""), false);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Đã đăng ký tài khoản khách hàng thành công. Bạn có thể đăng nhập với email và mật khẩu vừa tạo.');location.href='/Default.aspx?modul=ThanhVien&modulphu=DangNhap';", true);
            }
        }
        /// <summary>
        /// Phương thức kiểm tra xem có tồn tại bản ghi khách hàng với email này không
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        private bool DaTonTaiEmail(string email)
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.ThanhVien.ThongTinThanhVienByEmail(email);
            if (dt.Rows.Count > 0)
                return true;
            else
                return false;
        }
    }
}