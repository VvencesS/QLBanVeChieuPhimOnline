using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.HangPhim
{
    public partial class HangPhim_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayHangPhim();
        }

        private void LayHangPhim()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.HangPhim.Thongtin_HangPhim();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrHangPhim.Text += @"
                    <tr id='maDong_" + dt.Rows[i]["MaHangPhim"] + @"'>
                        <td class='cotMa'>" + dt.Rows[i]["MaHangPhim"] + @"</td>
                        <td class='cotTen'>" + dt.Rows[i]["TenHangPhim"] + @"</td>
                        <td class='cotCongCu'>
               
                            <a href='Admin.aspx?modul=QLPhim&submodul=HangPhim&thaotac=ChinhSua&id=" + dt.Rows[i]["MaHangPhim"] + @"' class='sua' title='Sửa'></a>
                            <a href='javascript:XoaHangPhim(" + dt.Rows[i]["MaHangPhim"] + @")' class='xoa' title='Xóa'></a>
                        </td>
                    </tr>
                    ";
            }
        }
    }
}