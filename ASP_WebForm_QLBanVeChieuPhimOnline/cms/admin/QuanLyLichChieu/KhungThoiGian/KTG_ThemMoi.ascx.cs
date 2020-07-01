using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.KhungThoiGian
{
    public partial class KTG_ThemMoi : System.Web.UI.UserControl
    {
        private string thaotac = "";
        private string id = "";//lấy id của sản phẩm cần chỉnh sửa
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thaotac"] != null)
                thaotac = Request.QueryString["thaotac"];
            if (Request.QueryString["id"] != null)
                id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                HienThiThongTin(id);
            }

        }

        private void HienThiThongTin(string id)
        {
            if (thaotac == "ChinhSua")
            {
                btThemMoi.Text = "Chỉnh Sửa";
                cbThemNhieuKTG.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.KhungThoiGian.Thongtin_KTG_by_MaKTG(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    tbNgayChieu.Text = dt.Rows[0]["NgayChieu"].ToString().Substring(0, 10);
                    tbGioChieu.Text = dt.Rows[0]["GioChieu"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuKTG.Visible = true;
                tbNgayChieu.Text = DateTime.Now.ToString("yyyy/MM/dd");
                tbGioChieu.Text = DateTime.Now.ToString("hh:mm");
            }

        }
        
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.KhungThoiGian.KTG_Inser(DateTime.Parse(tbNgayChieu.Text), tbGioChieu.Text.Trim());
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo khung thời gian thành công</div>";

                if (cbThemNhieuKTG.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=KTG");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.KhungThoiGian.KTG_Update(int.Parse(id),DateTime.Parse(tbNgayChieu.Text), tbGioChieu.Text.Trim());

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=KTG");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbNgayChieu.Text = DateTime.Now.ToString("MM/dd/yyyy");
            tbGioChieu.Text = DateTime.Now.ToString("hh:mm");
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}