using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyDatVe.Ve
{
    public partial class Ve_ThemMoi : System.Web.UI.UserControl
    {
        //private string thaotac = "";
        //private string id = "";//lấy id của sản phẩm cần chỉnh sửa
        //private DateTime ngayChieu = DateTime.Now;
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (Request.QueryString["thaotac"] != null)
        //        thaotac = Request.QueryString["thaotac"];
        //    if (Request.QueryString["id"] != null)
        //        id = Request.QueryString["id"];
        //    if (!IsPostBack)
        //    {
        //        LayPhim();
        //        LayNgayChieu();
        //        LayGioChieu();
        //        //LayGioChieuTheoNgayChieu(ngayChieu);
        //        LayPhong();
        //        HienThiThongTin(id);
        //    }

        //}

        //private void HienThiThongTin(string id)
        //{
        //    if (thaotac == "ChinhSua")
        //    {
        //        btThemMoi.Text = "Chỉnh Sửa";
        //        cbThemNhieuVe.Visible = false;

        //        DataTable dt = new DataTable();
        //        dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe.Ve.
        //        if (dt.Rows.Count > 0)
        //        {

        //            ddlPhim.SelectedValue = dt.Rows[0]["MaPhim"].ToString();
        //            ddlNgayChieu.SelectedValue = dt.Rows[0]["NgayChieu"].ToString().Substring(0, 10);
        //            ddlGioChieu.SelectedValue = dt.Rows[0]["GioChieu"].ToString();
        //            ddlPhong.SelectedValue = dt.Rows[0]["MaPhong"].ToString();
        //        }
        //    }

        //    else
        //    {
        //        btThemMoi.Text = "Thêm Mới";
        //        cbThemNhieuLichChieu.Visible = true;
        //    }

        //}
        //private void LayPhim()
        //{
        //    DataTable dt = new DataTable();
        //    dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim.Phim.Thongtin_Phim();
        //    ddlPhim.Items.Clear();

        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        ddlPhim.Items.Add(new ListItem(dt.Rows[i]["TenPhim"].ToString(), dt.Rows[i]["MaPhim"].ToString()));
        //    }
        //}

        //private void LayNgayChieu()
        //{
        //    DataTable dt = new DataTable();
        //    dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.KhungThoiGian.Thongtin_KTG();
        //    ddlNgayChieu.Items.Clear();

        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        ddlNgayChieu.Items.Add(new ListItem(dt.Rows[i]["NgayChieu"].ToString().Substring(0, 10), dt.Rows[i]["MaKTG"].ToString()));
        //    }
        //}
        //private void LayGioChieuTheoNgayChieu(DateTime ngayChieu)
        //{
        //    DataTable dt = new DataTable();
        //    dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.KhungThoiGian.Thongtin_KTG_by_NgayChieu(ngayChieu);
        //    ddlGioChieu.Items.Clear();

        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        ddlGioChieu.Items.Add(new ListItem(dt.Rows[i]["GioChieu"].ToString(), dt.Rows[i]["MaKTG"].ToString()));
        //    }
        //}
        //private void LayGioChieu()
        //{
        //    DataTable dt = new DataTable();
        //    dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.KhungThoiGian.Thongtin_KTG();
        //    ddlGioChieu.Items.Clear();

        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        ddlGioChieu.Items.Add(new ListItem(dt.Rows[i]["GioChieu"].ToString(), dt.Rows[i]["MaKTG"].ToString()));
        //    }
        //}
        //private void LayPhong()
        //{
        //    DataTable dt = new DataTable();
        //    dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Phong.Thongtin_Phong();
        //    ddlPhong.Items.Clear();

        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        ddlPhong.Items.Add(new ListItem(dt.Rows[i]["TenPhong"].ToString(), dt.Rows[i]["MaPhong"].ToString()));
        //    }
        //}

        //protected void btThemMoi_Click(object sender, EventArgs e)
        //{
        //    if (thaotac == "ThemMoi")
        //    {
        //        #region code nút thêm mới

        //        ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.LichChieu.LichChieu_Inser(int.Parse(ddlGioChieu.SelectedValue), int.Parse(ddlPhim.SelectedValue), int.Parse(ddlPhong.SelectedValue));
        //        ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo lịch chiếu thành công</div>";

        //        if (cbThemNhieuLichChieu.Checked)
        //        {
        //            //viết code xử lý xóa mục đã nhập để người dùng nhập rạp tiếp theo
        //            ResetControl();
        //        }

        //        else
        //        {
        //            //đẩy trang về trang danh sách các damnh mục đã tạo

        //            Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=LichChieu");
        //        }
        //        #endregion
        //    }
        //    else
        //    {
        //        #region code nút chỉnh sửa

        //        ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.LichChieu.LichChieu_Update_By_Ma(int.Parse(id), int.Parse(ddlGioChieu.SelectedValue), int.Parse(ddlPhim.SelectedValue), int.Parse(ddlPhong.SelectedValue));

        //        //đẩy trang về trang danh sách các damnh mục đã tạo
        //        Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=LichChieu");

        //        #endregion
        //    }
        //}

        //private void ResetControl()
        //{

        //}
        //protected void btHuy_Click(object sender, EventArgs e)
        //{
        //    ResetControl();
        //}

        //protected void ddlNgayChieu_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    DataTable dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.KhungThoiGian.Thongtin_KTG_by_MaKTG(int.Parse(ddlNgayChieu.SelectedValue));
        //    ngayChieu = DateTime.Parse(dt.Rows[0]["NgayChieu"].ToString());
        //    Response.Write("Đã chạy - " + ngayChieu);
        //    LayGioChieuTheoNgayChieu(ngayChieu);
        //}
    }
}