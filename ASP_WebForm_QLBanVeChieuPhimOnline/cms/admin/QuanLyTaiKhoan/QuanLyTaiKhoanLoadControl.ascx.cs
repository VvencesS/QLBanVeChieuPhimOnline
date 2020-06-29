using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan
{
    public partial class QuanLyTaiKhoanLoadControl : System.Web.UI.UserControl
    {
        private string submodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["submodul"] != null)
                submodul = Request.QueryString["submodul"];
            switch (submodul)
            {
                case "NhanVien":
                    plSanPhamLoadControl.Controls.Add(LoadControl("NhanVien/NhanVienLoadControl.ascx"));
                    break;

                case "ThanhVien":
                    plSanPhamLoadControl.Controls.Add(LoadControl("ThanhVien/ThanhVienLoadControl.ascx"));
                    break;

                default:
                    plSanPhamLoadControl.Controls.Add(LoadControl("NhanVien/NhanVienLoadControl.ascx"));
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