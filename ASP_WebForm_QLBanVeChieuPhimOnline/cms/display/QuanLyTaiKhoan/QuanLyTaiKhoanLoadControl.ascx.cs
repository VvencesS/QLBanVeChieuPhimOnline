using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan
{
    public partial class QuanLyTaiKhoanLoadControl : System.Web.UI.UserControl
    {
        private string submodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["submodul"] != null)
                submodul = Request.QueryString["submodul"];
            switch (submodul)
            {
                case "TTTK":
                    plLoadControl.Controls.Add(LoadControl("ThongTinTK/ThongTinTKLoadControl.ascx"));
                    break;

                case "DNDK":
                    plLoadControl.Controls.Add(LoadControl("DNDK/DNDKLoadControl.ascx"));
                    break;

                default:
                    plLoadControl.Controls.Add(LoadControl("ThongTinTK/ThongTinTKLoadControl.ascx"));
                    break;
            }
        }
    }
}