using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyPhim
{
    public partial class XemTrailer : System.Web.UI.UserControl
    {
        protected string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
                id = Request.QueryString["id"];
            if (!IsPostBack)
                LayTrailerPhim(id);
        }

        private void LayTrailerPhim(string id)
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.Phim.Thongtin_PhimTheoMa(int.Parse(id));
            if (dt.Rows.Count > 0)
            {
                ltrTenPhim.Text = dt.Rows[0]["TenPhim"].ToString();
                ltrTrailer.Text = dt.Rows[0]["Trailer"].ToString();
            }
        }
    }
}