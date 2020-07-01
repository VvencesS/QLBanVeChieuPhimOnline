using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Ghe
{
    public partial class Ghe_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayGhe();
        }

        private void LayGhe()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Ghe.Thongtin_Ghe();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrGhe.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaGhe"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaGhe"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["SoGhe"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenLoaiGhe"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenPhong"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["MoTa"] + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLLichChieu&submodul=Ghe&thaotac=ChinhSua&id=" + dt.Rows[i]["MaGhe"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaGhe(" + dt.Rows[i]["MaGhe"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}