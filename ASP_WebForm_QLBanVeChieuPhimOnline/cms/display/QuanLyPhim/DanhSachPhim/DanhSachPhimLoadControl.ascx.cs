using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyPhim.DanhSachPhim
{
    public partial class DanhSachPhimLoadControl : System.Web.UI.UserControl
    {
        private string thirdmodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thirdmodul"] != null)
                thirdmodul = Request.QueryString["thirdmodul"];
            switch (thirdmodul)
            {
                case "DangChieu":
                    plLoadControl.Controls.Add(LoadControl("PhimDangChieu.ascx"));
                    break;

                case "SapChieu":
                    plLoadControl.Controls.Add(LoadControl("PhimSapChieu.ascx"));
                    break;

                case "DacBiet":
                    plLoadControl.Controls.Add(LoadControl("SuatChieuDacBiet.ascx"));
                    break;

                default:
                    plLoadControl.Controls.Add(LoadControl("PhimDangChieu.ascx"));
                    break;
            }
        }
    }
}