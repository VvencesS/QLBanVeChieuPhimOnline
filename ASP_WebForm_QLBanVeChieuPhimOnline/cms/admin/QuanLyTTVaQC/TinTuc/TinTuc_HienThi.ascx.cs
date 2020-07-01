using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.TinTuc
{
    public partial class TinTuc_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayTinTuc();
        }

        private void LayTinTuc()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.TinTuc.Thongtin_TinTuc();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrTinTuc.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaTinTuc"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaTinTuc"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TieuDe"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TomTatTin"] + @"</td>
                    <td class='cotAnh'>
                        <img class='anhDaiDien'src='/pic/TinTuc/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                        <img class='anhDaiDienHover'src='/pic/TinTuc/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                    </td>
                    <td class='cotTen'>" + dt.Rows[i]["TenLoaiTinTuc"] + @"</td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["NgayThem"].ToString().Substring(0,10) + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLTTVaQC&submodul=TinTuc&thaotac=ChinhSua&id=" + dt.Rows[i]["MaTinTuc"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaTinTuc(" + dt.Rows[i]["MaTinTuc"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}