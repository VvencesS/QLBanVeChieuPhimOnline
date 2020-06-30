using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan.NhanVien
{
    public partial class NhanVien_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayNhanVien();
        }

        private void LayNhanVien()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.NhanVien.ThongTinNhanvien();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrNhanVien.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaNhanVien"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaNhanVien"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["HoTen"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["GioiTinh"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["Email"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["Sdt"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["SoThe"] + @"</td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["NgaySinh"].ToString().Substring(0, 10) + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["UserName"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenXaPhuong"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenQuanHuyen"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenTinhThanhPho"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenRap"] + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLTaiKhoan&submodul=NhanVien&thaotac=ChinhSua&id=" + dt.Rows[i]["MaNhanVien"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaNhanVien(" + dt.Rows[i]["MaNhanVien"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}