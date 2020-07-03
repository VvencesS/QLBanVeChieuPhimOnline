using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyDatVe.DatVe
{
    public partial class DatVeLoadControl : System.Web.UI.UserControl
    {
        private string thirdmodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thirdmodul"] != null)
                thirdmodul = Request.QueryString["thirdmodul"];
            switch (thirdmodul)
            {
                case "ChonGhe":
                    plLoadControl.Controls.Add(LoadControl("ChonGhe.ascx"));
                    break;

                case "ChonCombo":
                    plLoadControl.Controls.Add(LoadControl("ChonCombo.ascx"));
                    break;

                default:
                    plLoadControl.Controls.Add(LoadControl("ChonGhe.ascx"));
                    break;
            }
        }
    }
}