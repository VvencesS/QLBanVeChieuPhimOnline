using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyLichChieu
{
    public partial class ThongTinRap : System.Web.UI.UserControl
    {
        protected string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
                id = Request.QueryString["id"];
            else
                id = "1";

            if (!IsPostBack)
            {
                LayTTRap(id);
                LayPhimMoiNha();
            }
                

        }

        private void LayPhimMoiNha()
        {
            DataTable dt = new DataTable();
            dt = App_Code.database.QuanLyLichChieu.LichChieu.Thongtin_PhimMoiNhat();
            if (dt.Rows.Count > 0)
            {
                for(int i = 0; i < dt.Rows.Count; i++)
                {
                    ltrPhimMoi.Text += @"
                        <div class='film-hot'>
                            <img src = 'pic/Phim/" + dt.Rows[i]["AnhDaiDien"].ToString() + @"' alt='" + dt.Rows[i]["AnhDaiDien"].ToString() + @"'>
                            <a href = 'Default.aspx?modul=QLPhim&submodul=ChiTietPhim&id=" + dt.Rows[i]["Maphim"].ToString() + @"' class='name-film'>" + dt.Rows[i]["TenPhim"].ToString() + @"</a>
                            </div>";
                }
            }
        }

        private void LayTTRap(string id)
        {
            DataTable dt = new DataTable();
            dt = App_Code.database.QuanLyLichChieu.Rap.Thongtin_Rap_by_Ma(int.Parse(id));
            if (dt.Rows.Count > 0)
            {
                ltrTenRap.Text = dt.Rows[0]["TenRap"].ToString();
                ltrAnhRap.Text = @"
                    <img src='pic/Rap/" + dt.Rows[0]["AnhDaiDien"].ToString() + @"' alt=''>";
                ltrGioiThieu.Text= @"<p>"+dt.Rows[0]["GioiThieu"].ToString()+@"</p>";
                ltrDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
                ltrSDTR.Text = dt.Rows[0]["SDTRieng"].ToString();
            }
        }
    }
}

