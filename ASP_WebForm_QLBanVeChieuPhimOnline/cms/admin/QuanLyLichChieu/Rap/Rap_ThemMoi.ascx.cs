using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Rap
{
    public partial class Rap_ThemMoi : System.Web.UI.UserControl
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
                LayTinhThanhPho();
                LayQuanHuyen();
                LayXaPhuong();
                HienThiThongTin(id);
            }

        }

        private void HienThiThongTin(string id)
        {
            if (thaotac == "ChinhSua")
            {
                btThemMoi.Text = "Chỉnh Sửa";
                cbThemNhieuRap.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Rap.Thongtin_Rap_by_Ma(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    tbtenRap.Text = dt.Rows[0]["TenRap"].ToString();
                    tbDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
                    tbSDTRieng.Text = dt.Rows[0]["SDTRieng"].ToString();
                    tbGioiThieu.Text = dt.Rows[0]["GioiThieu"].ToString();
                    ddlTinhThanhPho.SelectedValue = dt.Rows[0]["MaTinhThanhPho"].ToString();
                    ddlQuanHuyen.SelectedValue = dt.Rows[0]["MaQuanHuyen"].ToString();
                    ddlXaPhuong.SelectedValue = dt.Rows[0]["MaXaPhuong"].ToString();

                    ltrAnhDaiDien.Text = "<img class='anhDaiDien'src='/pic/Rap/" + dt.Rows[0]["AnhDaiDien"] + @"'/>";
                    hdTenAnhDaiDienCu.Value = dt.Rows[0]["AnhDaiDien"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuRap.Visible = true;
            }

        }
        private void LayTinhThanhPho()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.TinhThanhPho.ThongTinTatCaTinhThanhPho();
            ddlTinhThanhPho.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlTinhThanhPho.Items.Add(new ListItem(dt.Rows[i]["TenTinhThanhPho"].ToString(), dt.Rows[i]["MaTinhThanhPho"].ToString()));
            }
        }

        private void LayQuanHuyen()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.QuanHuyen.ThongTinTatCaQuanHuyen();
            ddlQuanHuyen.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlQuanHuyen.Items.Add(new ListItem(dt.Rows[i]["TenQuanHuyen"].ToString(), dt.Rows[i]["MaQuanHuyen"].ToString()));
            }
        }

        private void LayXaPhuong()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.XaPhuong.ThongTinTatCaXaPhuong();
            ddlXaPhuong.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlXaPhuong.Items.Add(new ListItem(dt.Rows[i]["TenXaPhuong"].ToString(), dt.Rows[i]["MaXaPhuong"].ToString()));
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
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/Rap/") + flAnhDaiDien.FileName);
                    }
                }
                //else ltrThongBao.Text = "Nhập sai hoặc thiếu thông tin! Mời nhập lại";


                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Rap.Rap_Inser(flAnhDaiDien.FileName, tbtenRap.Text.Trim(), tbGioiThieu.Text, tbDiaChi.Text.Trim()
                    , tbSDTRieng.Text.Trim(), int.Parse(ddlXaPhuong.SelectedValue));
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo sản phẩm: " + tbtenRap.Text + "</div>";

                if (cbThemNhieuRap.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập rạp tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=Rap");
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
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/Rap/") + flAnhDaiDien.FileName);
                        tenAnhDaiDien = flAnhDaiDien.FileName;

                        // viết đoạn code xóa ảnh đại diện cũ tại đây - tạm thời chưa viết
                    }
                }

                if (tenAnhDaiDien == "")
                {
                    tenAnhDaiDien = hdTenAnhDaiDienCu.Value;
                }

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Rap.Rap_Update(int.Parse(id),tenAnhDaiDien, tbtenRap.Text.Trim(), tbGioiThieu.Text, tbDiaChi.Text.Trim()
                    , tbSDTRieng.Text.Trim(), int.Parse(ddlXaPhuong.SelectedValue));

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=Rap");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbtenRap.Text = "";
            tbGioiThieu.Text = "";
            tbDiaChi.Text = "";
            tbSDTRieng.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}