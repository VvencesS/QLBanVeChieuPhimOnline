using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan.ThanhVien
{
    public partial class ThanhVien_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LayThanhVien();
        }

        private void LayThanhVien()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.ThanhVien.ThongTinThanhVien();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string tt = (bool.Parse(dt.Rows[i]["TrangThai"].ToString()) == true) ? "Đã kích hoạt" : "Chưa kích hoạt";
                ltrThanhVien.Text += @"
                <tr id='maDong_" + dt.Rows[i]["MaThanhVien"] + @"'>
                    <td class='cotMa'>" + dt.Rows[i]["MaThanhVien"] + @"</td>
                    <td class='cotAnh'>
                        <img class='anhDaiDien'src='/pic/ThanhVien/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                        <img class='anhDaiDienHover'src='/pic/ThanhVien/" + dt.Rows[i]["AnhDaiDien"] + @"'/>
                    </td>
                    <td class='cotTen'>" + dt.Rows[i]["HoTen"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["GioiTinh"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["Email"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["Sdt"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["SoThe"] + @"</td>
                    <td class='cotNgayTao'>" + dt.Rows[i]["NgaySinh"].ToString().Substring(0, 10) + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenXaPhuong"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenQuanHuyen"] + @"</td>
                    <td class='cotTen'>" + dt.Rows[i]["TenTinhThanhPho"] + @"</td>
                    <td class='cotTen'>" + tt + @"</td>
                    <td class='cotCongCu'>
                        <a href='Admin.aspx?modul=QLTaiKhoan&submodul=ThanhVien&thaotac=ChinhSua&id=" + dt.Rows[i]["MaThanhVien"] + @"' class='sua' title='Sửa'></a>
                        <a href='javascript:XoaThanhVien(" + dt.Rows[i]["MaThanhVien"] + @")' class='xoa' title='Xóa'></a>
                    </td>
                </tr>
                ";
            }

        }
    }
}