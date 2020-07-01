using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTTVaQC.TinTuc
{
    public partial class TinTuc_ThemMoi : System.Web.UI.UserControl
    {
        private string thaotac = "";
        private string id = "";//lấy id của tin tức cần chỉnh sửa
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thaotac"] != null)
                thaotac = Request.QueryString["thaotac"];
            if (Request.QueryString["id"] != null)
                id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                LayLoaiTinTuc();
                HienThiThongTin(id);
            }

        }

        private void HienThiThongTin(string id)
        {
            if (thaotac == "ChinhSua")
            {
                btThemMoi.Text = "Chỉnh Sửa";
                cbThemNhieuTinTuc.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.TinTuc.Thongtin_TinTuc_by_MaTinTuc(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    ddlLoaiTinTuc.SelectedValue = dt.Rows[0]["MaLoaiTinTuc"].ToString();
                    tbTieuDeTin.Text = dt.Rows[0]["TieuDe"].ToString();
                    tbTomTatTin.Text = dt.Rows[0]["TomTatTin"].ToString();
                    tbNoiDung.Text = dt.Rows[0]["NoiDung"].ToString();

                    ltrAnhDaiDien.Text = "<img class='anhDaiDien'src='/pic/TinTuc/" + dt.Rows[0]["AnhdaiDien"] + @"'/>";
                    hdTenAnhDaiDienCu.Value = dt.Rows[0]["AnhDaiDien"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuTinTuc.Visible = true;
            }

        }
        
        private void LayLoaiTinTuc()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.LoaiTinTuc.Thongtin_LoaiTinTuc();
            ddlLoaiTinTuc.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlLoaiTinTuc.Items.Add(new ListItem(dt.Rows[i]["TenLoaiTinTuc"].ToString(), dt.Rows[i]["MaLoaiTinTuc"].ToString()));
            }
        }
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                if (flAnhDaiDien.FileContent.Length > 0)
                {
                    if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") || flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
                    {
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/TinTuc/") + flAnhDaiDien.FileName);
                    }
                }

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.TinTuc.TinTuc_Insert(flAnhDaiDien.FileName, tbTieuDeTin.Text.Trim(), tbTomTatTin.Text.Trim(), tbNoiDung.Text.ToString(), int.Parse(ddlLoaiTinTuc.SelectedValue), DateTime.Now);
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo tin tức: " + tbTieuDeTin.Text + "</div>";

                if (cbThemNhieuTinTuc.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLTTVaQC&submodul=TinTuc");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa
                string tenAnhDaiDien = "";

                if (flAnhDaiDien.FileContent.Length > 0)
                {
                    if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") || flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
                    {
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/TinTuc/") + flAnhDaiDien.FileName);
                        tenAnhDaiDien = flAnhDaiDien.FileName;

                        // viết đoạn code xóa ảnh đại diện cũ tại đây - tạm thời chưa viết
                    }
                }

                if (tenAnhDaiDien == "")
                {
                    tenAnhDaiDien = hdTenAnhDaiDienCu.Value;
                }

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC.TinTuc.TinTuc_Update(tenAnhDaiDien, int.Parse(id), tbTieuDeTin.Text.Trim(), tbTomTatTin.Text.Trim(), tbNoiDung.Text, int.Parse(ddlLoaiTinTuc.SelectedValue));

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLTTVaQC&submodul=TinTuc");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbNoiDung.Text = "";
            tbTieuDeTin.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}