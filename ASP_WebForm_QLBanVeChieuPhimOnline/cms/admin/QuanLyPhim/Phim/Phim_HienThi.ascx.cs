using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.Phim
{
    public partial class Phim_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayPhim();
        }

        private void LayPhim()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.Phim.Thongtin_Phim();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrPhim.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaPhim"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaPhim"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenPhim"] + @"</td>
                    <td class='cotAnh'>
                        <img class='anhDaiDien'src='/pic/Phim/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                        <img class='anhDaiDienHover'src='/pic/Phim/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                    </td>
                    <td class='cotTen'>" + dt.Rows[i]["TenTheLoai"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenDinhDang"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenHangPhim"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenQuocGia"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["ThoiLuong"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["DaoDien"] + @"</td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["KhoiChieu"].ToString().Substring(0, 10) + @"</td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["KetThuc"].ToString().Substring(0, 10) + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLPhim&submodul=Phim&thaotac=ChinhSua&id=" + dt.Rows[i]["MaPhim"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaPhim(" + dt.Rows[i]["MaPhim"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}