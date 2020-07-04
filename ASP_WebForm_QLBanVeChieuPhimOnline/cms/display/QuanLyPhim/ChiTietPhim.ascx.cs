using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.display.QuanLyPhim
{
    public partial class ChiTietPhim : System.Web.UI.UserControl
    {
        protected string id = "";
        protected string NC = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
                id = Request.QueryString["id"];
            if (Request.QueryString["NC"] != null)
                NC = Request.QueryString["NC"];

            if (!IsPostBack)
            {
                LayThongTinPhim(id);
                LayNgayChieu(id);
                LayGioChieuTheoNgayChieu(id, NC);
            }
        }

        private void LayGioChieuTheoNgayChieu(string id, string nc)
        {
            DataTable dt = new DataTable();
            dt = App_Code.database.QuanLyLichChieu.LichChieu.Thongtin_GioChieu_by_MaPhim_NgayChieu(int.Parse(id), DateTime.Parse(nc));
            if (dt.Rows.Count > 0)
            {
                ltrGioChieu.Text = @"
                    <div class='time'>
                        <div class='title'>2D Phụ đề</div>
                        <div class='timer'>";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ltrGioChieu.Text += @"
                        <div class='time1'>
                                    <div class='clock'>" + dt.Rows[0]["GioChieu"].ToString() + @"</div>
                                    <div class='detail'>142 ghế trống</div>
                                </div>";
                }
                ltrGioChieu.Text += @"
                    </div>
                    </div>";
            }
        }

        private void LayNgayChieu(string id)
        {
            DataTable dt = new DataTable();
            dt = App_Code.database.QuanLyLichChieu.LichChieu.Thongtin_NgayChieu_by_MaPhim(int.Parse(id));
            if (dt.Rows.Count > 0)
            {
                ltrNgayChieu.Text = @"
                    <div class='lich' id='lich'>
                        <ul>
                            <li class='active-lich'><a href = 'Default.aspx?modul=QLPhim&submodul=ChiTietPhim&id=1&NC" + dt.Rows[0]["NgayChieu"].ToString().Substring(0, 10) + @"' >
                                <span> " + dt.Rows[0]["NgayChieu"].ToString().Substring(0,5) + @" </span>
                            </ a ></ li >";
                NC = dt.Rows[0]["NgayChieu"].ToString();
                for (int i = 1; i< dt.Rows.Count; i++)
                {
                    ltrNgayChieu.Text += @"
                        <li><a href = 'Default.aspx?modul=QLPhim&submodul=ChiTietPhim&id=1&NC" + dt.Rows[0]["NgayChieu"].ToString().Substring(0,10) + @"' >
                            <span> " + dt.Rows[i]["NgayChieu"].ToString().Substring(0, 5)+ @"</span>
                        </ a ></ li >";
                }
                ltrNgayChieu.Text+= @"</ul>
                    </div>";
            }
        }

        private void LayThongTinPhim(string id)
        {
            DataTable dt = new DataTable();
            dt = App_Code.database.QuanLyPhim.Phim.Thongtin_PhimTheoMa(int.Parse(id));
            if (dt.Rows.Count > 0)
            {
                ltrTenPhim.Text = dt.Rows[0]["TenPhim"].ToString();
                ltrTrailer.Text = @"
                    <iframe width = '829' height='413' src='" + dt.Rows[0]["Trailer"].ToString() + @"' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen style='margin: 0 160px;'></iframe>";

                ltrChiTietPhim.Text = @"
                    <div class='main-content'>
                        <div class='avt'>
                            <img src = 'pic/Phim/"+dt.Rows[0]["AnhDaiDien"].ToString()+ @"' alt='" + dt.Rows[0]["TenPhim"].ToString() + @"'>
                        </div>
                        <div class='details'>
                            <h1 class='title'>" + dt.Rows[0]["TenPhim"].ToString() + @"</h1>
                            <p>
                                " + dt.Rows[0]["NoiDung"].ToString() + @"
                            </p>
                            <div class='laichiacot'>
                                <div class='trai'>
                                    <div>ĐẠO DIỄN:</div>
                                    <div class=''>THỂ LOẠI:</div>
                                    <div class=''>THỜI LƯỢNG:</div>
                                    <div class=''>NGÔN NGỮ:</div>
                                    <div class=''>NGÀY KHỞI CHIẾU:</div>
                                </div>
                                <div class='phai'>
                                    <div class=''>" + dt.Rows[0]["DaoDien"].ToString() + @"</div>
                                    <div class=''>" + dt.Rows[0]["TenTheLoai"].ToString() + @"</div>
                                    <div class=''>" + dt.Rows[0]["ThoiLuong"].ToString() + @"</div>
                                    <div class=''>" + dt.Rows[0]["TenQuocGia"].ToString() + @"</div>
                                    <div class=''>" + dt.Rows[0]["KhoiChieu"].ToString().Substring(0,10) + @"</div>
                                </div>
                            </div>
                        </div>
                    </div>";
            }
        }
    }
}


 
       

