using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                #region Kiểm tra đã đăng nhập hay chưa

                if (Session["ThanhVien"] != null && Session["ThanhVien"].ToString() == "1")
                {
                    //Đã đăng nhập
                    plDaDangNhap.Visible = true;
                    plChuaDangNhap.Visible = false;

                    if (Session["ThanhVien"] != null)
                        ltrTenTV.Text = Session["HoTen"].ToString();
                }
                else
                {
                    plDaDangNhap.Visible = false;
                    plChuaDangNhap.Visible = true;
                }
                #endregion

                LayDSRap();
            }
        }

        private void LayDSRap()
        {
            DataTable dt = new DataTable();
            ltrDSRap.Text = @"
                <div class='top-cart-block'>
                    <ul>
                        <li class='dropdown'>
                            <a href = '#' class='dropdown-toggle'>Beta Mỹ Đình
                            <i class='fa fa-angle-down'></i>
                            </a>
                            <ul class='dropdown-menu'>

                                <li class='dropdown-submenu'>
                                    <a href = '#' > Hà Nội
                                    <i class='fa fa-angle-right'></i>
                                    </a>
                                    <ul class='dropdown-menu sub-1'>";
            dt = App_Code.database.QuanLyLichChieu.Rap.Thongtin_Rap_TenTTP("Hà Nội");
            if (dt.Rows.Count > 0)
            {
                for(int i = 0; i < dt.Rows.Count; i++)
                {
                    ltrDSRap.Text += @"<li><a href = 'Default.aspx?modul=QLLichChieu&submodul=ThongTinRap&id="+ dt.Rows[i]["MaRap"].ToString() + @"' > " + dt.Rows[i]["TenRap"].ToString() + @"</a></li>";
                }
            }
            ltrDSRap.Text += @"
                        </ul>
                            </li>

                            <li class='dropdown-submenu'>
                                <a href = '#' > An Giang
                                <i class='fa fa-angle-right'></i>
                                </a>
                                <ul class='dropdown-menu sub-2'>
                                    <li><a href = '#' > Beta Long Xuyên</a></li>
                                </ul>
                            </li>

                            <li class='dropdown-submenu'>
                                <a href = '#' > Bắc Giang
                                <i class='fa fa-angle-right'></i>
                                </a>
                                <ul class='dropdown-menu sub-3'>
                                    <li><a href = '#' > Beta Bắc Giang</a></li>
                                </ul>
                            </li>

                            <li class='dropdown-submenu'>
                                <a href = '#' > Đồng Nai
                                <i class='fa fa-angle-right'></i>
                                </a>
                                <ul class='dropdown-menu sub-4'>
                                    <li><a href = '#' > Beta Biên Hòa</a></li>
                                    <li><a href = '#' > Meci Long Khánh</a></li>
                                    <li><a href = '#' > Meci Long Thành</a></li>
                                </ul>
                            </li>

                            <li class='dropdown-submenu'>
                                <a href = '#' > Khánh Hòa
                                <i class='fa fa-angle-right'></i>
                                </a>
                                <ul class='dropdown-menu sub-5'>
                                    <li><a href = '#' > Beta Nha Trang</a></li>
                                </ul>
                            </li>

                            <li class='dropdown-submenu'>
                                <a href = '#' > Thái Nguyên
                                <i class='fa fa-angle-right'></i>
                                </a>
                                <ul class='dropdown-menu sub-6'>
                                    <li><a href = '#' > Beta Thái Nguyên</a></li>
                                </ul>
                            </li>

                            <li class='dropdown-submenu'>
                                <a href = '#' > Thanh Hóa
                                <i class='fa fa-angle-right'></i>
                                </a>
                                <ul class='dropdown-menu sub-7'>
                                    <li><a href = '#' > Beta Thanh Hóa</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>";
        }

        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            //Xóa các session đã lưu
            Session["ThanhVien"] = null;

            Session["MaThanhVien"] = null;
            Session["HoTen"] = null;

            //đẩy về trang đăng nhập
            Response.Redirect("/Default.aspx");
        }
    }
}

