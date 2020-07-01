using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Ghe
{
    public partial class Ghe_ThemMoi : System.Web.UI.UserControl
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
                LaySoGhe();
                LayLoaiGhe();
                LayPhong();
                LayTrangThaiGhe();
                HienThiThongTin(id);
            }

        }

        private void HienThiThongTin(string id)
        {
            if (thaotac == "ChinhSua")
            {
                btThemMoi.Text = "Chỉnh Sửa";
                cbThemNhieuGhe.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Ghe.Thongtin_Ghe_by_Ma(int.Parse(id));
                if (dt.Rows.Count > 0)
                {

                    ddlSoGhe.SelectedValue = dt.Rows[0]["SoGhe"].ToString();
                    ddlLoaiGhe.SelectedValue = dt.Rows[0]["TenLoaiGhe"].ToString();
                    ddlPhong.SelectedValue = dt.Rows[0]["TenPhong"].ToString();
                    ddlTrangThai.SelectedValue = dt.Rows[0]["MoTa"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuGhe.Visible = true;
            }

        }
        private void LaySoGhe()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.SoGhe.Thongtin_SoGhe();
            ddlSoGhe.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlSoGhe.Items.Add(new ListItem(dt.Rows[i]["SoGhe"].ToString(), dt.Rows[i]["SoGhe"].ToString()));
            }
        }

        private void LayLoaiGhe()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.LoaiGhe.Thongtin_LoaiGhe();
            ddlLoaiGhe.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlLoaiGhe.Items.Add(new ListItem(dt.Rows[i]["TenLoaiGhe"].ToString(), dt.Rows[i]["MaLoaiGhe"].ToString()));
            }
        }
        private void LayPhong()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Phong.Thongtin_Phong();
            ddlPhong.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlPhong.Items.Add(new ListItem(dt.Rows[i]["TenPhong"].ToString(), dt.Rows[i]["MaPhong"].ToString()));
            }
        }

        private void LayTrangThaiGhe()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.TrangThai.Thongtin_TrangThai();
            ddlTrangThai.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlTrangThai.Items.Add(new ListItem(dt.Rows[i]["MoTa"].ToString(), dt.Rows[i]["MaTrangThai"].ToString()));
            }
        }
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Ghe.Ghe_Inser(int.Parse(ddlPhong.SelectedValue)
                    , int.Parse(ddlLoaiGhe.SelectedValue), ddlSoGhe.SelectedValue, int.Parse(ddlTrangThai.SelectedValue));
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo ghế thành công</div>";

                if (cbThemNhieuGhe.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập rạp tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=Ghe");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Ghe.Ghe_Update(int.Parse(id), int.Parse(ddlPhong.SelectedValue)
                    , int.Parse(ddlLoaiGhe.SelectedValue), ddlSoGhe.SelectedValue, int.Parse(ddlTrangThai.SelectedValue));

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=Ghe");

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