using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Combo
{
    public partial class Combo_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayCombo();
        }

        private void LayCombo()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Combo.Thongtin_Combo();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrCombo.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaCombo"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaCombo"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenCombo"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["MoTa"] + @"</td>
                    <td class='cotDonGia'>" + dt.Rows[i]["Gia"] + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLDatVe&submodul=Combo&thaotac=ChinhSua&id=" + dt.Rows[i]["MaCombo"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaCombo(" + dt.Rows[i]["MaCombo"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}