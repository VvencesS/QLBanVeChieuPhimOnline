using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.KhungThoiGian
{
    public partial class KTG_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayKTG();
        }

        private void LayKTG()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.KhungThoiGian.Thongtin_KTG();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrKTG.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaKTG"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaKTG"] + @"</td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["NgayChieu"].ToString().Substring(0,10) + @"</td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["GioChieu"] + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLLichChieu&submodul=KTG&thaotac=ChinhSua&id=" + dt.Rows[i]["MaKTG"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaKTG(" + dt.Rows[i]["MaKTG"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}