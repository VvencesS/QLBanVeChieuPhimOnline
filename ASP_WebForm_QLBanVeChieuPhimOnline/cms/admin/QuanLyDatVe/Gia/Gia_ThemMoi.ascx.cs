using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Gia
{
    public partial class Gia_ThemMoi : System.Web.UI.UserControl
    {
        private string thaotac = "";
        private string id = "";//lấy id của giá cần chỉnh sửa
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
                cbThemNhieuGia.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Gia.LayGiaMaGia(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    tbGia.Text = dt.Rows[0]["DonGia"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuGia.Visible = true;
            }

        }
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Gia.Gia_Insert(Single.Parse(tbGia.Text.Trim()));
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo giá: " + tbGia.Text + "</div>";

                if (cbThemNhieuGia.Checked)
                {
                    //viết code xử lý xóa Gia đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLDatVe&submodul=Gia");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Gia.Gia_Update(int.Parse(id), Single.Parse(tbGia.Text.Trim()));

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLDatVe&submodul=Gia");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbGia.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}