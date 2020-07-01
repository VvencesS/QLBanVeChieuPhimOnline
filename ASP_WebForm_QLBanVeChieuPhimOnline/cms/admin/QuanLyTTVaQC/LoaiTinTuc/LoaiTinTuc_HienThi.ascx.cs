using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.LoaiTinTuc
{
    public partial class LoaiTinTuc_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayLoaiTinTuc();
        }

        private void LayLoaiTinTuc()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiTinTuc.Thongtin_LoaiTinTuc();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrLoaiTinTuc.Text += @"
                    <tr id='maDong_" + dt.Rows[i]["MaLoaiTinTuc"] + @"'>
                        <td class='cotMa'>" + dt.Rows[i]["MaLoaiTinTuc"] + @"</td>
                        <td class='cotTen'>" + dt.Rows[i]["TenLoaiTinTuc"] + @"</td>
                        <td class='cotCongCu'>
                            <a href='Admin.aspx?modul=QLTTVaQC&submodul=LoaiTinTuc&thaotac=ChinhSua&id=" + dt.Rows[i]["MaLoaiTinTuc"] + @"' class='sua' title='Sửa'></a>
                            <a href='javascript:XoaLoaiTinTuc(" + dt.Rows[i]["MaLoaiTinTuc"] + @")' class='xoa' title='Xóa'></a>
                        </td>
                    </tr>
                    ";
            }
        }
    }
}