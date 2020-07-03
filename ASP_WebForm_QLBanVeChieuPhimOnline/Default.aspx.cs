using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline
{
    public partial class Default : System.Web.UI.Page
    {
        private string modul = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            //Xóa các session đã lưu
            Session["KhachHang"] = null;

            Session["MaKH"] = null;
            Session["TenKh"] = null;
            Session["DiaChiKH"] = null;
            Session["sdtKH"] = null;
            Session["EmailKH"] = null;

            //đẩy về trang đăng nhập
            Response.Redirect("/Default.aspx");
        }
    }
}