using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim
{
    public partial class QuanLyPhimLoadControl : System.Web.UI.UserControl
    {
        private string submodul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["submodul"] != null)
                submodul = Request.QueryString["submodul"];
            switch (submodul)
            {
                case "DinhDang":
                    plSanPhamLoadControl.Controls.Add(LoadControl("DinhDang/DinhDangLoadControl.ascx"));
                    break;

                case "HangPhim":
                    plSanPhamLoadControl.Controls.Add(LoadControl("HangPhim/HangPhimLoadControl.ascx"));
                    break;

                case "Phim":
                    plSanPhamLoadControl.Controls.Add(LoadControl("Phim/PhimLoadControl.ascx"));
                    break;

                case "QuocGia":
                    plSanPhamLoadControl.Controls.Add(LoadControl("QuocGia/QuocGiaLoadControl.ascx"));
                    break;

                case "TheLoai":
                    plSanPhamLoadControl.Controls.Add(LoadControl("TheLoai/TheLoaiLoadControl.ascx"));
                    break;

                default:
                    plSanPhamLoadControl.Controls.Add(LoadControl("Phim/PhimLoadControl.ascx"));
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