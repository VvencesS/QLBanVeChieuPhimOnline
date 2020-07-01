using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.QuangCao
{
    public partial class QuangCao_ThemMoi : System.Web.UI.UserControl
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

                LayLoaiQuangCao();
                HienThiThongTin(id);
            }

        }

        private void HienThiThongTin(string id)
        {
            if (thaotac == "ChinhSua")
            {
                btThemMoi.Text = "Chỉnh Sửa";
                cbThemNhieuQuangCao.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.QuangCao.Thongtin_QuangCao_ByMa(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    ddlLoaiQC.SelectedValue = dt.Rows[0]["MaLoaiQuangCao"].ToString();

                    ltrAnhQC.Text = "<img class='anhDaiDien'src='/pic/QuangCao/" + dt.Rows[0]["AnhQC"] + @"'/>";
                    hdTenAnhQCCu.Value = dt.Rows[0]["AnhQC"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuQuangCao.Visible = true;
            }

        }
        
        #region Lấy ra thông tin loại quảng cáo
        private void LayLoaiQuangCao()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiQuangCao.Thongtin_LoaiQuangCao();
            ddlLoaiQC.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlLoaiQC.Items.Add(new ListItem(dt.Rows[i]["TenLoaiQUangCao"].ToString(), dt.Rows[i]["MaLoaiQuangCao"].ToString()));
            }
        }
        #endregion
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                if (flAnhQC.FileContent.Length > 0)
                {
                    if (flAnhQC.FileName.EndsWith(".jpeg") || flAnhQC.FileName.EndsWith(".jpg") || flAnhQC.FileName.EndsWith(".png") || flAnhQC.FileName.EndsWith(".gif"))
                    {
                        flAnhQC.SaveAs(Server.MapPath("pic/QuangCao/") + flAnhQC.FileName);
                    }
                }
                //else ltrThongBao.Text = "Nhập sai hoặc thiếu thông tin! Mời nhập lại";

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.QuangCao.QuangCao_Insert(int.Parse(ddlLoaiQC.SelectedValue), flAnhQC.FileName, DateTime.Now);
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo quảng cáo!</div>";

                if (cbThemNhieuQuangCao.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLTTVaQC&submodul=QuangCao");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa
                string tenAnhQC = "";

                if (flAnhQC.FileContent.Length > 0)
                {
                    if (flAnhQC.FileName.EndsWith(".jpeg") || flAnhQC.FileName.EndsWith(".jpg") || flAnhQC.FileName.EndsWith(".png") || flAnhQC.FileName.EndsWith(".gif"))
                    {
                        flAnhQC.SaveAs(Server.MapPath("pic/QuangCao/") + flAnhQC.FileName);
                        tenAnhQC = flAnhQC.FileName;

                        // viết đoạn code xóa ảnh đại diện cũ tại đây - tạm thời chưa viết
                    }
                }

                if (tenAnhQC == "")
                {
                    tenAnhQC = hdTenAnhQCCu.Value;
                }

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.QuangCao.QuangCao_Update(int.Parse(id), int.Parse(ddlLoaiQC.SelectedValue), tenAnhQC);

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=SanPham&modulphu=DanhSachSanPham");

                #endregion
            }
        }

        private void ResetControl()
        {
            
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}