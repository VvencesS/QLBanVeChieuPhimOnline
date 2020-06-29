using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.DinhDang.Ajax
{
    public partial class DinhDang : System.Web.UI.Page
    {
        string thaotac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Code kiểm tra đăng nhập tại đây sau đó mới thực hiện các thao tác dưới
            //Kiểm tra nếu đã đăng nhập thì mới cho vào trang này
            //if (Session["DangNhap"] != null && Session["DangNhap"].ToString() == "1")
            //{
            //    //Đã đăng nhập
            //}
            //else
            //{
            //    //Nếu chưa đăng nhập --> return để dừng không cho thực hiện các câu lệnh bên dưới
            //    return;
            //}
            if (Request.Params["thaotac"] != null)
            {
                thaotac = Request.Params["thaotac"];
            }

            switch (thaotac)
            {
                case "XoaDinhDang":
                    XoaDinhDang();
                    break;

            }
        }

        private void XoaDinhDang()
        {
            string MaDinhDang = "";
            if (Request.Params["MaDinhDang"] != null)
            {
                MaDinhDang = Request.Params["MaDinhDang"];

                //Thực hiện code xóa
                //B2: Xóa dữ liệu trên sqlserver
                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.DinhDang.DinhDang_Delete(int.Parse(MaDinhDang));

                // Trả về thông báo 1 thực hiện thành công 2 thực hiện không thành công
                Response.Write("1");
            }
        }
    }
}