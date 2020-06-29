using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.QuocGia
{
    public partial class QuocGia_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayQuocGia();
        }

        private void LayQuocGia()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.QuocGia.Thongtin_QuocGia();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrQuocGia.Text += @"
                    <tr id='maDong_" + dt.Rows[i]["MaQuocGia"] + @"'>
                        <td class='cotMa'>" + dt.Rows[i]["MaQuocGia"] + @"</td>
                        <td class='cotTen'>" + dt.Rows[i]["TenQuocGia"] + @"</td>
                        <td class='cotCongCu'>
               
                            <a href='Admin.aspx?modul=QLPhim&submodul=QuocGia&thaotac=ChinhSua&id=" + dt.Rows[i]["MaQuocGia"] + @"' class='sua' title='Sửa'></a>
                            <a href='javascript:XoaQuocGia(" + dt.Rows[i]["MaQuocGia"] + @")' class='xoa' title='Xóa'></a>
                        </td>
                    </tr>
                    ";
            }
        }
    }
}