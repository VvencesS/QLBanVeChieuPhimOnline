using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display
{
    public partial class DisplayLoadControl : System.Web.UI.UserControl
    {
        private string modul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["modul"] != null)
                modul = Request.QueryString["modul"];

            switch (modul)
            {
                case "QLDatVe":
                    plLoadControl.Controls.Add(LoadControl("QuanLyDatVe/QuanLyDatVeLoadControl.ascx"));
                    break;

                case "QLLichChieu":
                    plLoadControl.Controls.Add(LoadControl("QuanLyLichChieu/QuanLyLichChieuLoadControl.ascx"));
                    break;

                case "QLTaiKhoan":
                    plLoadControl.Controls.Add(LoadControl("QuanLyTaiKhoan/QuanLyTaiKhoanLoadControl.ascx"));
                    break;

                case "QLTTVaQC":
                    plLoadControl.Controls.Add(LoadControl("QuanLyTTVaQC/QuanLyTTVaQCLoadControl.ascx"));
                    break;

                case "QLPhim":
                    plLoadControl.Controls.Add(LoadControl("QuanLyPhim/QuanLyPhimLoadControl.ascx"));
                    break;

                default:
                    plLoadControl.Controls.Add(LoadControl("Home/HomeLoadControl.ascx"));
                    break;

            }

        }
    }
}