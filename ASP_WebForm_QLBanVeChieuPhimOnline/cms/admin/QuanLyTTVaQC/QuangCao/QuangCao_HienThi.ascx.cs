using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.QuangCao
{
    public partial class QuangCao_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayQuangCao();
        }

        private void LayQuangCao()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.QuangCao.Thongtin_QuangCao();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrQuangCao.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaQuangCao"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaQuangCao"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenLoaiQuangCao"] + @"</td>
                    <td class='cotAnh'>
                        <img class='anhDaiDien'src='/pic/QuangCao/" + dt.Rows[i]["AnhQC"] + @"'/>
                        <img class='anhDaiDienHover'src='/pic/QuangCao/" + dt.Rows[i]["AnhQC"] + @"'/>
                    </td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["NgayThem"].ToString().Substring(0,10) + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLTTVaQC&submodul=QuangCao&thaotac=ChinhSua&id=" + dt.Rows[i]["MaQuangCao"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaQuangCao(" + dt.Rows[i]["MaQuangCao"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}