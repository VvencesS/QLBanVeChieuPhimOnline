using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Ve
{
    public partial class Ve_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayVe();
        }

        private void LayVe()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Ve.ThongTinTatCaVe();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string tt = (bool.Parse(dt.Rows[i]["TrangThai"].ToString()) == true) ? "Đã thanh toán" : "Chưa thanh toán";
                ltrVe.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaVe"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaVe"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenPhim"] + @"</td>
                    <td class='cotAnh'>
                        <img class='anhDaiDien'src='/pic/SanPham/" + dt.Rows[i]["AnhSP"] + @"'/>
                        <img class='anhDaiDienHover'src='/pic/SanPham/" + dt.Rows[i]["AnhSP"] + @"'/>
                    </td>
                    <td class='cotTen'>" + dt.Rows[i]["TenDinhDang"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["ThoiLuong"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenPhong"] + @"</td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["NgayChieu"].ToString().Substring(0,10) + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["GioChieu"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["SoGhe"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenLoaiGhe"] + @"</td>
                    <td class='cotDonGia'>" + dt.Rows[i]["DonGia"] + @"</td>
                    <td class='cotTen'>" + tt + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLDatVe&submodul=Ve&thaotac=ChinhSua&id=" + dt.Rows[i]["MaVe"] + @"' class='sua' title='Sửa'></a>
                        <a href='#' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}