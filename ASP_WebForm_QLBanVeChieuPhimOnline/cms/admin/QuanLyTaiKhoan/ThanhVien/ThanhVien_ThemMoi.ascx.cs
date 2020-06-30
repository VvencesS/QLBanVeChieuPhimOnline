using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyTaiKhoan.ThanhVien
{
    public partial class ThanhVien_ThemMoi : System.Web.UI.UserControl
    {
        private string thaotac = "";
        private string id = "";//lấy id của nhân viên cần chỉnh sửa
        private string mkCu = "";
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
                cbThemNhieuThanhVien.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.ThanhVien.ThongTinThanhVienByMa(int.Parse(id));
                if (dt.Rows.Count > 0)
                {
                    string gt = (bool.Parse(dt.Rows[0]["GioiTinh"].ToString()) == true) ? "Nam" : "Nữ";
                    string tt = (bool.Parse(dt.Rows[0]["TrangThai"].ToString()) == true) ? "Đã kích hoạt" : "Chưa kích hoạt";
                    tbTenThanhVien.Text = dt.Rows[0]["HoTen"].ToString();
                    tbNgaySinh.Text = dt.Rows[0]["NgaySinh"].ToString().Substring(0, 10);
                    ddlGioiTinh.SelectedValue = gt;
                    tbEmail.Text = dt.Rows[0]["Email"].ToString();
                    tbSDT.Text = dt.Rows[0]["Sdt"].ToString();
                    tbCMT.Text = dt.Rows[0]["SoThe"].ToString();
                    ddlTinhThanhPho.SelectedValue = dt.Rows[0]["MaTinhThanhPho"].ToString();
                    ddlQuanHuyen.SelectedValue = dt.Rows[0]["MaQuanHuyen"].ToString();
                    ddlXaPhuong.SelectedValue = dt.Rows[0]["MaXaPhuong"].ToString();
                    ddlTrangThai.SelectedValue = tt;
                    MatKhauCu.Value = dt.Rows[0]["PassWord"].ToString();

                    ltrAnhDaiDien.Text = "<img class='anhDaiDien'src='/pic/ThanhVien/" + dt.Rows[0]["AnhDaiDien"] + @"'/>";
                    hdTenAnhDaiDienCu.Value = dt.Rows[0]["AnhDaiDien"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuThanhVien.Visible = true;
                tbNgaySinh.Text = DateTime.Now.ToString("yyyy/MM/dd");
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
                if (flAnhDaiDien.FileContent.Length > 0)
                {
                    if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") || flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
                    {
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/ThanhVien/") + flAnhDaiDien.FileName);
                    }
                }
                bool gt = (ddlGioiTinh.SelectedValue == "Nam") ? true : false;
                bool tt = (ddlTrangThai.SelectedValue == "Đã kích hoạt") ? true : false;
                #region code nút thêm mới
                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.ThanhVien.ThanhVien_Inser(flAnhDaiDien.FileName,tbTenThanhVien.Text.Trim()
                    , tbEmail.Text.Trim(), tbSDT.Text.Trim(), tbCMT.Text.Trim(), gt, DateTime.Parse(tbNgaySinh.Text.Trim()), 
                    App_Code.MaHoa.MaHoaMD5(tbMatKhau.Text.Trim()), int.Parse(ddlXaPhuong.SelectedValue), tt);
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo sản phẩm: " + tbTenThanhVien.Text + "</div>";

                if (cbThemNhieuThanhVien.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLTaiKhoan&submodul=ThanhVien");
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
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/ThanhVien/") + flAnhDaiDien.FileName);
                        tenAnhDaiDien = flAnhDaiDien.FileName;

                        // viết đoạn code xóa ảnh đại diện cũ tại đây - tạm thời chưa viết
                    }
                }

                if (tenAnhDaiDien == "")
                {
                    tenAnhDaiDien = hdTenAnhDaiDienCu.Value;
                }
                bool gt = (ddlGioiTinh.SelectedValue == "Nam") ? true : false;
                bool tt = (ddlTrangThai.SelectedValue == "Đã kích hoạt") ? true : false;

                if (tbMatKhau.Text != "")
                {
                    ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.ThanhVien.ThanhVien_Update(flAnhDaiDien.FileName, tbTenThanhVien.Text.Trim(), tbEmail.Text.Trim(), tbSDT.Text.Trim(), tbCMT.Text.Trim()
                , gt, DateTime.Parse(tbNgaySinh.Text.Trim()), App_Code.MaHoa.MaHoaMD5(tbMatKhau.Text), int.Parse(ddlXaPhuong.SelectedValue), tt, int.Parse(id));
                }
                else
                {
                    ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTaiKhoan.ThanhVien.ThanhVien_Update(flAnhDaiDien.FileName, tbTenThanhVien.Text.Trim(), tbEmail.Text.Trim(), tbSDT.Text.Trim(), tbCMT.Text.Trim()
                , gt, DateTime.Parse(tbNgaySinh.Text.Trim()), MatKhauCu.Value, int.Parse(ddlXaPhuong.SelectedValue), tt, int.Parse(id));
                }

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLTaiKhoan&submodul=ThanhVien");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbTenThanhVien.Text = "";
            tbCMT.Text = "";
            tbEmail.Text = "";
            tbMatKhau.Text = "";
            tbSDT.Text = "";
            tbTenThanhVien.Text = "";
            tbNgaySinh.Text = DateTime.Now.ToString("MM/dd/yyyy");
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}