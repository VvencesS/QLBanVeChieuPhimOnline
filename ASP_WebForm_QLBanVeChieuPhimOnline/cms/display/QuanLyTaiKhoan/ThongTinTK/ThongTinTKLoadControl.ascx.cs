using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTaiKhoan.ThongTinTK
{
    public partial class ThongTinTKLoadControl : System.Web.UI.UserControl
    {
        private string thirdmodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thirdmodul"] != null)
                thirdmodul = Request.QueryString["thirdmodul"];
            switch (thirdmodul)
            {
                case "ThongTinTK":
                    plLoadControl.Controls.Add(LoadControl("ThongTinTK.ascx"));
                    break;

                case "HanhTrinhDienAnh":
                    plLoadControl.Controls.Add(LoadControl("HanhTrinhDienAnh.ascx"));
                    break;


                default:
                    plLoadControl.Controls.Add(LoadControl("ThongTinTK.ascx"));
                    break;
            }
        }
    }
}