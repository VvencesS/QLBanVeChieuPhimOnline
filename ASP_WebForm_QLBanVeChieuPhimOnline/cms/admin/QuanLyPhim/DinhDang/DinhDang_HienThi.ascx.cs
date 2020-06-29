using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.DinhDang
{
    public partial class DinhDang_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayDinhDang();
        }

        private void LayDinhDang()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.DinhDang.Thongtin_DinhDang();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrDinhDang.Text += @"
                    <tr id='maDong_" + dt.Rows[i]["MaDinhDang"] + @"'>
                        <td class='cotMa'>" + dt.Rows[i]["MaDinhDang"] + @"</td>
                        <td class='cotTen'>" + dt.Rows[i]["TenDinhDang"] + @"</td>
                        <td class='cotCongCu'>
               
                            <a href='Admin.aspx?modul=QLPhim&submodul=DinhDang&thaotac=ChinhSua&id=" + dt.Rows[i]["MaDinhDang"] + @"' class='sua' title='Sửa'></a>
                            <a href='javascript:XoaDinhDang(" + dt.Rows[i]["MaDinhDang"] + @")' class='xoa' title='Xóa'></a>
                        </td>
                    </tr>
                    ";
            }
        }
    }
}