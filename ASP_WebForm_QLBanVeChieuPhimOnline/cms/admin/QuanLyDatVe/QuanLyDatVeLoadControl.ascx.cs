using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe
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
                case "Combo":
                    plSanPhamLoadControl.Controls.Add(LoadControl("Combo/ComboLoadControl.ascx"));
                    break;

                case "Gia":
                    plSanPhamLoadControl.Controls.Add(LoadControl("Gia/GiaLoadControl.ascx"));
                    break;

                case "BaoGia":
                    plSanPhamLoadControl.Controls.Add(LoadControl("BaoGia/BaoGiaLoadControl.ascx"));
                    break;

                case "Ve":
                    plSanPhamLoadControl.Controls.Add(LoadControl("Ve/VeLoadControl.ascx"));
                    break;

                default:
                    plSanPhamLoadControl.Controls.Add(LoadControl("Ve/VeLoadControl.ascx"));
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