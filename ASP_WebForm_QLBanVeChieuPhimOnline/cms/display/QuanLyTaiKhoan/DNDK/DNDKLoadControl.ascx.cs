using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan.DNDK
{
    public partial class DNDKLoadControl : System.Web.UI.UserControl
    {
        private string thirdmodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thirdmodul"] != null)
                thirdmodul = Request.QueryString["thirdmodul"];
            switch (thirdmodul)
            {
                case "DangNhap":
                    plLoadControl.Controls.Add(LoadControl("DangNhap.ascx"));
                    break;

                case "DangKy":
                    plLoadControl.Controls.Add(LoadControl("DangKy.ascx"));
                    break;


                default:
                    plLoadControl.Controls.Add(LoadControl("DangNhap.ascx"));
                    break;
            }
        }
    }
}