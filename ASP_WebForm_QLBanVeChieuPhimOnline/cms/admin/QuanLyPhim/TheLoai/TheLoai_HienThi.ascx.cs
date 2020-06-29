using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.TheLoai
{
    public partial class TheLoai_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayTheLoai();
        }

        private void LayTheLoai()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.TheLoai.Thongtin_TheLoai();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrTheLoai.Text += @"
                    <tr id='maDong_" + dt.Rows[i]["MaTheLoai"] + @"'>
                        <td class='cotMa'>" + dt.Rows[i]["MaTheLoai"] + @"</td>
                        <td class='cotTen'>" + dt.Rows[i]["TenTheLoai"] + @"</td>
                        <td class='cotCongCu'>
               
                            <a href='Admin.aspx?modul=QLPhim&submodul=TheLoai&thaotac=ChinhSua&id=" + dt.Rows[i]["MaTheLoai"] + @"' class='sua' title='Sửa'></a>
                            <a href='javascript:XoaTheLoai(" + dt.Rows[i]["MaTheLoai"] + @")' class='xoa' title='Xóa'></a>
                        </td>
                    </tr>
                    ";
            }
        }
    }
}