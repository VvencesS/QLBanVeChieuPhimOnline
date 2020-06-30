using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.LoaiQuangCao
{
    public partial class LoaiQuangCao_ThemMoi : System.Web.UI.UserControl
    {
        private string thaotac = "";
        private string id = "";//lấy id của loại quảng cáo cần chỉnh sửa
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
                cbThemNhieuLoaiQuangCao.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiQuangCao.Thongtin_LoaiquangCao_by_MaLoaiQuangCao(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    tbTenLoaiQuangCao.Text = dt.Rows[0]["TenLoaiQuangCao"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuLoaiQuangCao.Visible = true;
            }

        }
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiQuangCao.LoaiQuangCao_Inser(tbTenLoaiQuangCao.Text);
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo loại quảng cáo: " + tbTenLoaiQuangCao.Text + "</div>";

                if (cbThemNhieuLoaiQuangCao.Checked)
                {
                    //viết code xử lý xóa loại quảng cáo đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các loại quảng cáo đã tạo

                    Response.Redirect("Admin.aspx?modul=QLTTVaQC&submodul=LoaiQuangCao");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiQuangCao.LoaiQuangCao_Update(int.Parse(id), tbTenLoaiQuangCao.Text);

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLTTVaQC&submodul=LoaiQuangCao");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbTenLoaiQuangCao.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}