using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyLichChieu
{
    public partial class QuanLyLichChieuLoadControl : System.Web.UI.UserControl
    {
        private string submodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["submodul"] != null)
                submodul = Request.QueryString["submodul"];
            switch (submodul)
            {
                case "LichChieuTheoRap":
                    plLoadControl.Controls.Add(LoadControl("LichChieuTheoRap.ascx"));
                    break;

                case "ThongTinRap":
                    plLoadControl.Controls.Add(LoadControl("ThongTinRap.ascx"));
                    break;
            }
        }
    }
}