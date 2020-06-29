using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin
{
    public partial class AdminLoadControl : System.Web.UI.UserControl
    {
        private string modul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["modul"] != null)
            {
                modul = Request.QueryString["modul"];
                switch (modul)
                {
                    case "QLDatVe":
                        plAdminLoadControl.Controls.Add(LoadControl("QuanLyDatVe/QuanLyDatVeLoadControl.ascx"));
                        break;

                    case "QLLichChieu":
                        plAdminLoadControl.Controls.Add(LoadControl("QuanLyLichChieu/QuanLyLichChieuLoadControl.ascx"));
                        break;

                    case "QLPhim":
                        plAdminLoadControl.Controls.Add(LoadControl("QuanLyPhim/QuanLyPhimLoadControl.ascx"));
                        break;

                    case "QLTaiKhoan":
                        plAdminLoadControl.Controls.Add(LoadControl("QuanLyTaiKhoan/QuanLyTaiKhoanLoadControl.ascx"));
                        break;

                    case "QLTTVaQC":
                        plAdminLoadControl.Controls.Add(LoadControl("QuanLyTTVaQC/QuanLyTTVaQCLoadControl.ascx"));
                        break;

                    default:
                        plAdminLoadControl.Controls.Add(LoadControl("QuanLyPhim/QuanLyPhimLoadControl.ascx"));
                        break;

                }
            }
        }
    }
}