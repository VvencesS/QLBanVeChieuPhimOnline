using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTTVaQC
{
    public partial class QuanLyTTVaQCLoadControl : System.Web.UI.UserControl
    {
        private string submodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["submodul"] != null)
                submodul = Request.QueryString["submodul"];
            switch (submodul)
            {
                case "KhuyenMaiMoi":
                    plLoadControl.Controls.Add(LoadControl("KhuyenMaiMoi.ascx"));
                    break;

                case "TinBenLe":
                    plLoadControl.Controls.Add(LoadControl("TinBenLe.ascx"));
                    break;

                default:
                    plLoadControl.Controls.Add(LoadControl("TinMoiVaUuDai.ascx"));
                    break;
            }
        }
    }
}