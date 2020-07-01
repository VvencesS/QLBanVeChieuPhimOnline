using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Rap
{
    public partial class Rap_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayRap();
        }

        private void LayRap()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Rap.Thongtin_Rap();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrRap.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaRap"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaRap"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenRap"] + @"</td>
                    <td class='cotAnh'>
                        <img class='anhDaiDien'src='/pic/Rap/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                        <img class='anhDaiDienHover'src='/pic/Rap/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                    </td>
                    <td class='cotTen'>" + dt.Rows[i]["GioiThieu"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["DiaChi"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["SDTRieng"] + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLLichChieu&submodul=Rap&thaotac=ChinhSua&id=" + dt.Rows[i]["MaRap"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaRap(" + dt.Rows[i]["MaRap"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}