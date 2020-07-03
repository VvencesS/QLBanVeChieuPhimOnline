using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyPhim
{
    public partial class QuanLyPhimLoadControl : System.Web.UI.UserControl
    {
        private string submodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["submodul"] != null)
                submodul = Request.QueryString["submodul"];
            switch (submodul)
            {
                case "ChiTietPhim":
                    plLoadControl.Controls.Add(LoadControl("ChiTietPhim.ascx"));
                    break;

                case "DanhSachPhim":
                    plLoadControl.Controls.Add(LoadControl("DanhSachPhim/DanhSachPhimLoadControl.ascx"));
                    break;

                default:
                    plLoadControl.Controls.Add(LoadControl("DanhSachPhim/DanhSachPhimLoadControl.ascx"));
                    break;
            }
        }
    }
}