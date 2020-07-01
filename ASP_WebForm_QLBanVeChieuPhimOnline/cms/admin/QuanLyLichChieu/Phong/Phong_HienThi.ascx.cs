using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Phong
{
    public partial class Phong_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayPhong();
        }

        private void LayPhong()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Phong.Thongtin_Phong();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrPhong.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaPhong"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaPhong"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenPhong"] + @"</td>
                    <td class='cotSoLuong'>" + dt.Rows[i]["SoHangMax"] + @"</td>
                    <td class='cotSoLuong'>" + dt.Rows[i]["SoCotMax"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenDinhDang"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenRap"] + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLLichChieu&submodul=Phong&thaotac=ChinhSua&id=" + dt.Rows[i]["MaPhong"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaPhong(" + dt.Rows[i]["MaPhong"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}