using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Combo
{
    public partial class Combo_ThemMoi : System.Web.UI.UserControl
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
                cbThemNhieuCombo.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Combo.Thongtin_Combo_by_MaCombo(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    tbTenCombo.Text = dt.Rows[0]["TenCombo"].ToString();
                    tbGia.Text = dt.Rows[0]["Gia"].ToString();
                    tbMoTa.Text = dt.Rows[0]["MoTa"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuCombo.Visible = true;
            }

        }
        
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Combo.Combo_Inser(tbTenCombo.Text.Trim(), tbMoTa.Text.Trim(), Single.Parse(tbGia.Text.Trim()));
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo sản phẩm: " + tbTenCombo.Text + "</div>";

                if (cbThemNhieuCombo.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLDatVe&submodul=Combo");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Combo.Combo_Update(int.Parse(id),tbTenCombo.Text.Trim(), tbMoTa.Text.Trim(), Single.Parse(tbGia.Text.Trim()));

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLDatVe&submodul=Combo");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbTenCombo.Text = "";
            tbMoTa.Text = "";
            tbGia.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}