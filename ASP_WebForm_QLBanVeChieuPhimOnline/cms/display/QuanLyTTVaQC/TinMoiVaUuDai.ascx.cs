using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyTTVaQC
{
    public partial class TinMoiVaUuDai : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LayKMM();
            }
        }

        private void LayKMM()
        {
            DataTable dt = new DataTable();
            dt = App_Code.database.QuanLyTTVaQC.TinTuc.Thongtin_TinTuc();
            if (dt.Rows.Count > 0)
            {
                ltrKMM.Text = @"
                    <div class='news-top'>
                        <div class='news-left'>
                            <div class='banner-large'>
                                <img class='scale' src='pic/TinTuc/"+dt.Rows[0]["AnhDaiDien"].ToString()+ @"' alt='" + dt.Rows[0]["AnhDaiDien"].ToString() + @"'>
                            </div>
                            <div class='text-banner'>
                                <h2><a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[0]["MaTinTuc"].ToString() + @"' > " + dt.Rows[0]["TieuDe"].ToString() + @"</a></h2>
                            </div>
                        </div>
                        <div class='news-right'>";
               
                ltrKMM.Text += @"
                    <div class='border-radius-left'>
                        <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[1]["MaTinTuc"].ToString() + @"' >
                            <div class='banner'>
                                <img src = 'pic/TinTuc/" + dt.Rows[1]["AnhDaiDien"].ToString() + @"' alt='" + dt.Rows[1]["AnhDaiDien"].ToString() + @"' class='scale'>
                            </div>
                            <div class='text-banner'>
                                <h4>
                                    <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[1]["MaTinTuc"].ToString() + @"' > " + dt.Rows[1]["TieuDe"].ToString() + @"</a>
                                </h4>
                            </div>
                        </a>
                    </div>
                    <div class='border-radius-right'>
                        <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[2]["MaTinTuc"].ToString() + @"' >
                            <div class='banner'>
                                <img src = 'pic/TinTuc/" + dt.Rows[2]["AnhDaiDien"].ToString() + @"' alt='" + dt.Rows[2]["AnhDaiDien"].ToString() + @"' class='scale'>
                            </div>
                            <div class='text-banner'>
                                <h4>
                                    <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[2]["MaTinTuc"].ToString() + @"' > " + dt.Rows[2]["TieuDe"].ToString() + @"</a>
                                </h4>
                            </div>
                        </a>
                    </div>";
                
                ltrKMM.Text += @"
                    </div>
                    </div>

                    <div class='news-bot'>
                        <div class='border-radius '>
                            <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[3]["MaTinTuc"].ToString() + @"' >
                                <div class='banner'>
                                    <img src = 'pic/TinTuc/" + dt.Rows[3]["AnhDaiDien"].ToString() + @"' alt='" + dt.Rows[3]["AnhDaiDien"].ToString() + @"' class='scale'>
                                </div>
                                <div class='text-banner'>
                                    <h4>
                                        <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[3]["MaTinTuc"].ToString() + @"' > " + dt.Rows[3]["TieuDe"].ToString() + @"</a>
                                        </h4>
                                </div>
                            </a>
                        </div>
                        <div class='border-radius two'>
                            <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[4]["MaTinTuc"].ToString() + @"' >
                                <div class='banner'>
                                    <img src = 'pic/TinTuc/" + dt.Rows[4]["AnhDaiDien"].ToString() + @"' alt='" + dt.Rows[4]["AnhDaiDien"].ToString() + @"' class='scale'>
                                </div>
                                <div class='text-banner'>
                                    <h4>
                                        <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[4]["MaTinTuc"].ToString() + @"' > " + dt.Rows[4]["TieuDe"].ToString() + @"</a>
                                        </h4>
                                </div>
                            </a>
                        </div>
                        <div class='border-radius three'>
                            <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[5]["MaTinTuc"].ToString() + @"' >
                                <div class='banner'>
                                    <img src = 'pic/TinTuc/" + dt.Rows[5]["AnhDaiDien"].ToString() + @"' alt='" + dt.Rows[5]["AnhDaiDien"].ToString() + @"' class='scale'>
                                </div>
                                <div class='text-banner'>
                                    <h4>
                                        <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[5]["MaTinTuc"].ToString() + @"' > " + dt.Rows[5]["TieuDe"].ToString() + @"</a>
                                        </h4>
                                </div>
                            </a>
                        </div>
                        <div class='border-radius four'>
                            <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[6]["MaTinTuc"].ToString() + @"' >
                                <div class='banner'>
                                    <img src = 'pic/TinTuc/" + dt.Rows[6]["AnhDaiDien"].ToString() + @"' alt='" + dt.Rows[6]["AnhDaiDien"].ToString() + @"' class='scale'>
                                </div>
                                <div class='text-banner'>
                                    <h4>
                                        <a href = 'Default.aspx?modul=QLTTVaQC&submodul=KhuyenMaiMoi&id=" + dt.Rows[6]["MaTinTuc"].ToString() + @"' > " + dt.Rows[6]["TieuDe"].ToString() + @"</a>
                                        </h4>
                                </div>
                            </a>
                        </div>
                    </div>";
            }
        }
    }
}



        
        
    