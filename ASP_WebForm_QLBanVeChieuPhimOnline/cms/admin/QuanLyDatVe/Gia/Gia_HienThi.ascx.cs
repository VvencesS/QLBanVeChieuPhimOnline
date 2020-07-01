using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Gia
{
    public partial class Gia_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayGia();
        }

        private void LayGia()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Gia.LayTatCaGia();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrGia.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaGia"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaGia"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["DonGia"] + @"</td>
                    <td class='cotCongCu'>
     
                        <a href='Admin.aspx?modul=QLDatVe&submodul=Gia&thaotac=ChinhSua&id=" + dt.Rows[i]["MaGia"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaGia(" + dt.Rows[i]["MaGia"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}