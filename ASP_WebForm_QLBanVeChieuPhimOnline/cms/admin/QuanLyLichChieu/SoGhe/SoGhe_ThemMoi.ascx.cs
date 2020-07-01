using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.SoGhe
{
    public partial class SoGhe_ThemMoi : System.Web.UI.UserControl
    {
        private string thaotac = "";
        private string id = "";//lấy id của màu cần chỉnh sửa
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
                cbThemNhieuSoGhe.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.SoGhe.Thongtin_SoGhe_by_Ma(id);
                if (dt.Rows.Count > 0)
                {
                    tbSoGhe.Text = dt.Rows[0]["SoGhe"].ToString();
                    tbSoHang.Text = dt.Rows[0]["SoHang"].ToString();
                    tbSoCot.Text = dt.Rows[0]["SoCot"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuSoGhe.Visible = true;
            }

        }
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.SoGhe.SoGhe_Insert(tbSoGhe.Text.Trim(), tbSoHang.Text.Trim(), tbSoCot.Text.Trim());
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo màu: " + tbSoGhe.Text + "</div>";

                if (cbThemNhieuSoGhe.Checked)
                {
                    //viết code xử lý xóa SoGhe đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=SoGhe");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.SoGhe.SoGhe_Update(tbSoGhe.Text.Trim(), tbSoHang.Text.Trim(), tbSoCot.Text.Trim());

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=SoGhe");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbSoGhe.Text = "";
            tbSoHang.Text = "";
            tbSoCot.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}