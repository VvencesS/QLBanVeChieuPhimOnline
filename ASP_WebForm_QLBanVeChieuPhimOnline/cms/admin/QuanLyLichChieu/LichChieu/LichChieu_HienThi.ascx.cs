using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.LichChieu
{
    public partial class LichChieu_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayLichChieu();
        }

        private void LayLichChieu()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.LichChieu.Thongtin_LichChieu();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrLichChieu.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaLichChieu"] + @"'>
                    <td class='cotTen'>" + dt.Rows[i]["MaLichChieu"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenPhim"] + @"</td>
                    <td class='cotAnh'>
                        <img class='anhDaiDien'src='/pic/Phim/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                        <img class='anhDaiDienHover'src='/pic/Phim/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                    </td>
                    <td class='cotTen'>" + dt.Rows[i]["TenDinhDang"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenPhong"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["NgayChieu"].ToString().Substring(0,10) + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["GioChieu"] + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLLichChieu&submodul=LichChieu&thaotac=ChinhSua&id=" + dt.Rows[i]["MaLichChieu"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaGhe(" + dt.Rows[i]["MaLichChieu"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}