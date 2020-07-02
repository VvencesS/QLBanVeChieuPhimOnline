using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.TheLoai.Ajax
{
    public partial class TheLoai : System.Web.UI.Page
    {
        string thaotac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Code kiểm tra đăng nhập tại đây sau đó mới thực hiện các thao tác dưới
            //Kiểm tra nếu đã đăng nhập thì mới cho vào trang này
            if (Session["DangNhap"] != null && Session["DangNhap"].ToString() == "1")
            {
                //Đã đăng nhập
            }
            else
            {
                //Nếu chưa đăng nhập --> return để dừng không cho thực hiện các câu lệnh bên dưới
                return;
            }
            if (Request.Params["thaotac"] != null)
            {
                thaotac = Request.Params["thaotac"];
            }

            switch (thaotac)
            {
                case "XoaTheLoai":
                    XoaTheLoai();
                    break;

            }
        }

        private void XoaTheLoai()
        {
            string MaTheLoai = "";
            if (Request.Params["MaTheLoai"] != null)
            {
                MaTheLoai = Request.Params["MaTheLoai"];

                //Thực hiện code xóa
                //B2: Xóa dữ liệu trên sqlserver
                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.TheLoai.TheLoai_Delete(int.Parse(MaTheLoai));

                // Trả về thông báo 1 thực hiện thành công 2 thực hiện không thành công
                Response.Write("1");
            }
        }
    }
}