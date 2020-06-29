using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyPhim.Phim
{
    public partial class Phim_ThemMoi : System.Web.UI.UserControl
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
                LayTheLoai();
                LayQuocGia();
                LayDinhDang();
                LayHangPhim();
                LayNhanVien();
                HienThiThongTin(id);
            }

        }

        private void HienThiThongTin(string id)
        {
            if (thaotac == "ChinhSua")
            {
                btThemMoi.Text = "Chỉnh Sửa";
                cbThemNhieuPhim.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.Phim.Thongtin_PhimTheoMa(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    tbTenPhim.Text = dt.Rows[0]["TenPhim"].ToString();
                    tbKhoiChieu.Text = dt.Rows[0]["KhoiChieu"].ToString();
                    tbKetThuc.Text = dt.Rows[0]["KetThuc"].ToString();
                    tbThoiLuong.Text = dt.Rows[0]["ThoiLuong"].ToString();
                    tbDaoDien.Text = dt.Rows[0]["DaoDien"].ToString();
                    ddlDinhDang.SelectedValue = dt.Rows[0]["MaDinhDang"].ToString();
                    ddlHangPhim.SelectedValue = dt.Rows[0]["MaHangPhim"].ToString();
                    ddlNhanVien.SelectedValue = dt.Rows[0]["MaNhanVien"].ToString();
                    ddlQuocGia.SelectedValue = dt.Rows[0]["MaQuocGia"].ToString();
                    ddlTheLoai.SelectedValue = dt.Rows[0]["MaTheLoai"].ToString();
                    tbNoiDung.Text = dt.Rows[0]["NoiDung"].ToString();
                    tbTrailer.Text = dt.Rows[0]["Trailer"].ToString();

                    ltrAnhDaiDien.Text = "<img class='anhDaiDien'src='/pic/Phim/" + dt.Rows[0]["AnhDaiDien"] + @"'/>";
                    hdTenAnhDaiDienCu.Value = dt.Rows[0]["AnhDaiDien"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuPhim.Visible = true;
                tbKhoiChieu.Text = DateTime.Now.ToString("yyyy/MM/dd");
                tbKetThuc.Text = DateTime.Now.ToString("yyyy/MM/dd");
            }

        }
        private void LayTheLoai()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.TheLoai.Thongtin_TheLoai();
            ddlTheLoai.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlTheLoai.Items.Add(new ListItem(dt.Rows[i]["TenTheLoai"].ToString(), dt.Rows[i]["MaTheLoai"].ToString()));
            }
        }

        private void LayQuocGia()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.QuocGia.Thongtin_QuocGia();
            ddlQuocGia.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlQuocGia.Items.Add(new ListItem(dt.Rows[i]["TenQuocGia"].ToString(), dt.Rows[i]["MaQuocGia"].ToString()));
            }
        }

        private void LayDinhDang()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.DinhDang.Thongtin_DinhDang();
            ddlDinhDang.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlDinhDang.Items.Add(new ListItem(dt.Rows[i]["TenDinhDang"].ToString(), dt.Rows[i]["MaDinhDang"].ToString()));
            }
        }

        private void LayHangPhim()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.HangPhim.Thongtin_HangPhim();
            ddlHangPhim.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlHangPhim.Items.Add(new ListItem(dt.Rows[i]["TenHangPhim"].ToString(), dt.Rows[i]["MaHangPhim"].ToString()));
            }
        }
        private void LayNhanVien()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.NhanVien.ThongTinTatCaNhanVien();
            ddlNhanVien.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlNhanVien.Items.Add(new ListItem(dt.Rows[i]["HoTen"].ToString(), dt.Rows[i]["MaNhanVien"].ToString()));
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
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/Phim/") + flAnhDaiDien.FileName);
                    }
                }
                //else ltrThongBao.Text = "Nhập sai hoặc thiếu thông tin! Mời nhập lại";

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.Phim.Phim_Insert(tbTenPhim.Text.Trim(), flAnhDaiDien.FileName, int.Parse(ddlTheLoai.SelectedValue), int.Parse(ddlQuocGia.SelectedValue)
                    , tbThoiLuong.Text.Trim(), DateTime.Parse(tbKhoiChieu.Text), DateTime.Parse(tbKetThuc.Text), tbDaoDien.Text.Trim(), tbNoiDung.Text.Trim()
                    , tbTrailer.Text.Trim(), int.Parse(ddlDinhDang.SelectedValue), int.Parse(ddlNhanVien.SelectedValue), int.Parse(ddlHangPhim.SelectedValue));
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo sản phẩm: " + tbTenPhim.Text + "</div>";

                if (cbThemNhieuPhim.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLPhim&submodul=Phim");
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
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/Phim/") + flAnhDaiDien.FileName);
                        tenAnhDaiDien = flAnhDaiDien.FileName;

                        // viết đoạn code xóa ảnh đại diện cũ tại đây - tạm thời chưa viết
                    }
                }

                if (tenAnhDaiDien == "")
                {
                    tenAnhDaiDien = hdTenAnhDaiDienCu.Value;
                }

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.Phim.Phim_Update(int.Parse(id), tbTenPhim.Text.Trim(), flAnhDaiDien.FileName, int.Parse(ddlTheLoai.SelectedValue),
                    int.Parse(ddlQuocGia.SelectedValue), tbThoiLuong.Text.Trim(), DateTime.Parse(tbKhoiChieu.Text), DateTime.Parse(tbKetThuc.Text), tbDaoDien.Text.Trim(), tbNoiDung.Text.Trim(),
                    tbTrailer.Text.Trim(), int.Parse(ddlDinhDang.SelectedValue), int.Parse(ddlNhanVien.SelectedValue), int.Parse(ddlHangPhim.SelectedValue));

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLPhim&submodul=Phim");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbTenPhim.Text = "";
            tbDaoDien.Text = "";
            tbNoiDung.Text = "";
            tbKetThuc.Text = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
            tbKhoiChieu.Text = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
            tbThoiLuong.Text = "";
            tbTrailer.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }

    }
}