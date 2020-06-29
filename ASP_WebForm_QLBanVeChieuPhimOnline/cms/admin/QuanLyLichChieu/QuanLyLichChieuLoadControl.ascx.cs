using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu
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
                case "Ghe":
                    plSanPhamLoadControl.Controls.Add(LoadControl("Ghe/GheLoadControl.ascx"));
                    break;

                case "KTG":
                    plSanPhamLoadControl.Controls.Add(LoadControl("KhungThoiGian/KTGLoadControl.ascx"));
                    break;

                case "LichChieu":
                    plSanPhamLoadControl.Controls.Add(LoadControl("LichChieu/LichChieuLoadControl.ascx"));
                    break;

                case "Phong":
                    plSanPhamLoadControl.Controls.Add(LoadControl("Phong/PhongLoadControl.ascx"));
                    break;

                case "Rap":
                    plSanPhamLoadControl.Controls.Add(LoadControl("Rap/RapLoadControl.ascx"));
                    break;

                case "SoGhe":
                    plSanPhamLoadControl.Controls.Add(LoadControl("SoGhe/SoGheLoadControl.ascx"));
                    break;
                default:
                    plSanPhamLoadControl.Controls.Add(LoadControl("LichChieu/LichChieuLoadControl.ascx"));
                    break;


            }
        }

        protected string DanhDau(string tenModul, string tensubmodul, string tenThaoTac)
        {
            string s = "";

            /*Lấy giá trị querystring modul, submodul, thaotac*/
            string modul = "";
            if (Request.QueryString["modul"] != null)
                modul = Request.QueryString["modul"];

            string submodul = "";
            if (Request.QueryString["submodul"] != null)
                submodul = Request.QueryString["submodul"];

            string thaotac = "";
            if (Request.QueryString["thaotac"] != null)
                thaotac = Request.QueryString["thaotac"];

            /*So sánh nếu querystring bằng tên modul, submodul, thaotac truyền vào thì trả về current --> đánh dấu là menu hiện tại*/
            if (modul == tenModul && submodul == tensubmodul && thaotac == tenThaoTac)
                s = "current";
            return s;
        }
    }
}