using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.LoaiQuangCao
{
    public partial class LoaiQuangCao_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayLoaiQuangCao();
        }

        private void LayLoaiQuangCao()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiQuangCao.Thongtin_LoaiQuangCao();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrLoaiQuangCao.Text += @"
                    <tr id='maDong_" + dt.Rows[i]["MaLoaiQuangCao"] + @"'>
                        <td class='cotMa'>" + dt.Rows[i]["MaLoaiQuangCao"] + @"</td>
                        <td class='cotTen'>" + dt.Rows[i]["TenLoaiQuangCao"] + @"</td>
                        <td class='cotCongCu'>
                            <a href='Admin.aspx?modul=QLTTVaQC&submodul=LoaiQuangCao&thaotac=ChinhSua&id=" + dt.Rows[i]["MaLoaiQuangCao"] + @"' class='sua' title='Sửa'></a>
                            <a href='javascript:XoaLoaiQuangCao(" + dt.Rows[i]["MaLoaiQuangCao"] + @")' class='xoa' title='Xóa'></a>
                        </td>
                    </tr>
                    ";
            }
        }
    }
}