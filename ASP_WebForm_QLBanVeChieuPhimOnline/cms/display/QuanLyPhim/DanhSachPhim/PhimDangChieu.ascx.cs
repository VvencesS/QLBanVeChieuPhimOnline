using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyPhim.DanhSachPhim
{
    public partial class PhimDangChieu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ltrPhimDangChieu.Text = LayDSPhimDangChieu();
            }
        }
        private string LayDSPhimDangChieu()
        {
            string s = "";
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.Phim.Thongtin_PhimDangChieu();

            if (dt.Rows.Count > 0)
            {
                s = @"<div class='row'>";
                for (int i = 0; i < 4; i++)
                {
                    s += @"
                        <div class='film'>
                                <div class='film-img'>
                                    <div class='img'>
                                        <img src = 'pic/Phim/" + dt.Rows[i]["AnhDaiDien"] + @"' alt='" + dt.Rows[i]["AnhDaiDien"] + @"'>
                                    </div>
                                    <span style = 'position: absolute; top: 10px; left: 10px' >
                                        
                                    </span>
                                    <div class='play-trailer'>
                                        <a href ='Default.aspx?modul=QLPhim&submodul=XemTrailer&id=" + dt.Rows[i]["MaPhim"] + @"' class='view-trailer'>
                                            <i class='fas fa-play-circle'></i>
                                        </a>
                                    </div>
                                    <div class='sticker-new'></div>
                                </div>
                                <div class='film-detail'>
                                    <div class='film-info'>
                                        <h3 class='film-name'>
                                            <a href = 'Default.aspx?modul=QLPhim&submodul=ChiTietPhim&id=" + dt.Rows[i]["MaPhim"] + @"' > " + dt.Rows[i]["TenPhim"] + @"
                                                </a>
                                        </h3>
                                        <ul class='info'>
                                            <li>
                                                <span class='bold'>Thể loại:</span> " + dt.Rows[i]["TenTheLoai"] + @"
                                            </li>
                                            <li>
                                                <span class='bold'>Thời lượng:</span> " + dt.Rows[i]["ThoiLuong"] + @"
                                            </li>
                                        </ul>

                                    </div>

                                    <div class='text-center'>
                                        <a href = '#' class='btn-mua-ve'>
                                            <span>
                                                <i class='fas fa-ticket-alt'></i>
                                                MUA VÉ
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>";
                }
                s += @"</div>";

                s += @"<div class='row'>";
                for (int i = 4; i < 8; i++)
                {
                    s += @"
                        <div class='film'>
                                <div class='film-img'>
                                    <div class='img'>
                                        <img src = 'pic/Phim/" + dt.Rows[i]["AnhDaiDien"] + @"' alt='" + dt.Rows[i]["AnhDaiDien"] + @"'>
                                    </div>
                                    <span style = 'position: absolute; top: 10px; left: 10px' >
                                        
                                    </span>
                                    <div class='play-trailer'>
                                        <a href ='Default.aspx?modul=QLPhim&submodul=XemTrailer&id=" + dt.Rows[i]["MaPhim"] + @"' class='view-trailer'>
                                            <i class='fas fa-play-circle'></i>
                                        </a>
                                    </div>
                                    <div class='sticker-new'></div>
                                </div>
                                <div class='film-detail'>
                                    <div class='film-info'>
                                        <h3 class='film-name'>
                                            <a href = 'Default.aspx?modul=QLPhim&submodul=ChiTietPhim&id=" + dt.Rows[i]["MaPhim"] + @"' > " + dt.Rows[i]["TenPhim"] + @"
                                                </a>
                                        </h3>
                                        <ul class='info'>
                                            <li>
                                                <span class='bold'>Thể loại:</span> " + dt.Rows[i]["TenTheLoai"] + @"
                                            </li>
                                            <li>
                                                <span class='bold'>Thời lượng:</span> " + dt.Rows[i]["ThoiLuong"] + @"
                                            </li>
                                        </ul>

                                    </div>

                                    <div class='text-center'>
                                        <a href = '#' class='btn-mua-ve'>
                                            <span>
                                                <i class='fas fa-ticket-alt'></i>
                                                MUA VÉ
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>";
                }
                s += @"</div>";


            }
            return s;
        }
    }
}