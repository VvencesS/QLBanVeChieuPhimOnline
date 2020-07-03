using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyDatVe
{
    public partial class QuanLyDatVeLoadControl : System.Web.UI.UserControl
    {
        private string submodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["submodul"] != null)
                submodul = Request.QueryString["submodul"];
            switch (submodul)
            {
                case "GiaVe":
                    plLoadControl.Controls.Add(LoadControl("GiaVe.ascx"));
                    break;


                default:
                    plLoadControl.Controls.Add(LoadControl("GiaVe.ascx"));
                    break;
            }
        }
    }
}