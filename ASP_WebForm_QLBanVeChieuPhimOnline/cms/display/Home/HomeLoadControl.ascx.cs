using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.Home
{
    public partial class HomeLoadControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ltrSlide.Text = LaySlide();
                ltrBannerL.Text = LayBannerL();
                ltrBannerR.Text = LayBannerR();
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
                                        <img src = 'pic/Phim/"+ dt.Rows[i]["AnhDaiDien"] + @"' alt='" + dt.Rows[i]["AnhDaiDien"] + @"'>
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
        #region Lấy ảnh slide
        private string LaySlide()
        {
            string s = "";

            //Code lấy ra vị trí quảng nhóm cáo
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiQuangCao.Thongtin_LoaiquangCao_by_TenLoaiQuangCao("Slide");

            //Nếu tồn tại vị trí nhóm quảng cáo --> tìm quảng cáo trong nhóm đó
            if (dt.Rows.Count > 0)
            {
                //Gọi tới phương thức lấy ảnh quảng cáo theo id nhóm quảng cáo
                s = LayAnhSlide(int.Parse(dt.Rows[0]["MaLoaiQuangCao"].ToString()));
            }

            return s;
        }

        private string LayAnhSlide(int maLoaiQuangCao)
        {
            string s = "";

            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.QuangCao.Thongtin_QuangCao_OrderBy(maLoaiQuangCao);
            if (dt.Rows.Count > 0)
            {
                s += @"
                    <div class='slide active'>
                        <img src = 'pic/QuangCao/" + dt.Rows[0]["AnhQC"] + @"' alt='" + dt.Rows[0]["AnhQC"] + @"' style='width: 100%'>
                    </div>";
                for (int i = 1; i < dt.Rows.Count; i++)
                {
                    s += @"
                    <div class='slide'>
                        <img src = 'pic/QuangCao/" + dt.Rows[i]["AnhQC"] + @"' alt='" + dt.Rows[i]["AnhQC"] + @"' style='width: 100%'>
                    </div>";
                }
            }

            return s;
        }
        #endregion
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

                


    
