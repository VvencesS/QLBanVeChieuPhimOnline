using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.SoGhe
{
    public partial class SoGhe_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LaySoGhe();
        }

        private void LaySoGhe()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.SoGhe.Thongtin_SoGhe();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrSoGhe.Text += @"
                <tr id='maDong_" + dt.Rows[i]["SoGhe"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["SoGhe"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["SoHang"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["SoCot"] + @"</td>
                    <td class='cotCongCu'>
     
                        <a href='Admin.aspx?modul=QLLichChieu&submodul=SoGhe&thaotac=ChinhSua&id=" + dt.Rows[i]["SoGhe"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaSoGhe(" + dt.Rows[i]["SoGhe"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}