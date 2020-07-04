using System;
using System.Collections.Generic;
using System.Data;
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
            if (!IsPostBack)
            {

                ltrBannerL.Text = LayBannerL();
                ltrBannerR.Text = LayBannerR();
            }
        }
        #region Lấy ảnh banner
        private string LayBannerL()
        {
            string s = "";

            //Code lấy ra vị trí quảng nhóm cáo
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiQuangCao.Thongtin_LoaiquangCao_by_TenLoaiQuangCao("Banner");

            //Nếu tồn tại vị trí nhóm quảng cáo --> tìm quảng cáo trong nhóm đó
            if (dt.Rows.Count > 0)
            {
                //Gọi tới phương thức lấy ảnh quảng cáo theo id nhóm quảng cáo
                s = LayAnhBannerL(int.Parse(dt.Rows[0]["MaLoaiQuangCao"].ToString()));
            }

            return s;
        }

        private string LayAnhBannerL(int maLoaiQuangCao)
        {
            string s = "";

            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.QuangCao.Thongtin_QuangCao_OrderBy(maLoaiQuangCao);
            if (dt.Rows.Count > 0)
            {
                s += @"<img src = 'pic/QuangCao/" + dt.Rows[0]["AnhQC"] + @"' alt=''>";
            }

            return s;
        }

        private string LayBannerR()
        {
            string s = "";

            //Code lấy ra vị trí quảng nhóm cáo
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiQuangCao.Thongtin_LoaiquangCao_by_TenLoaiQuangCao("Banner");

            //Nếu tồn tại vị trí nhóm quảng cáo --> tìm quảng cáo trong nhóm đó
            if (dt.Rows.Count > 0)
            {
                //Gọi tới phương thức lấy ảnh quảng cáo theo id nhóm quảng cáo
                s = LayAnhBannerR(int.Parse(dt.Rows[0]["MaLoaiQuangCao"].ToString()));
            }

            return s;
        }

        private string LayAnhBannerR(int maLoaiQuangCao)
        {
            string s = "";

            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.QuangCao.Thongtin_QuangCao_OrderBy(maLoaiQuangCao);
            if (dt.Rows.Count > 0)
            {
                s += @"<img src = 'pic/QuangCao/" + dt.Rows[1]["AnhQC"] + @"' alt=''>";
            }

            return s;
            #endregion
        }
    }
}