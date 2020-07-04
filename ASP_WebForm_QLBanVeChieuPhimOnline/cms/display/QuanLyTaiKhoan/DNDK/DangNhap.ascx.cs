using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan.DNDK
{
    public partial class DangNhap : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtDangNhap_Click(object sender, EventArgs e)
        {
            //kiểm tra database có tên đăng nhập và mật khẩu này không?=>có=>xác nhận đăng nhập thành công
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.ThanhVien.Login(tbEmail.Text.Trim(), App_Code.MaHoa.MaHoaMD5(tbMatKhau.Text.Trim()));

            if (dt.Rows.Count > 0)
            {
                //Đăng nhập thành công --> Lưu giá trị vào session để đánh dấu đăng nhập thành công
                Session["ThanhVien"] = "1"; //Thể hiện đã đăng nhập thành công

                //Gán thêm thông tin tài khoản đã đăng nhập
                Session["MaThanhVien"] = dt.Rows[0]["MaThanhVien"];
                Session["HoTen"] = dt.Rows[0]["HoTen"];

                Response.Redirect("/Default.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Tên đăng nhập hoặc mật khẩu không chính xác!');", true);
            }
        }
    }
}