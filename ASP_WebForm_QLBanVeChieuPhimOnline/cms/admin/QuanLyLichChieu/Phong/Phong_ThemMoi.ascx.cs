using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.cms.admin.QuanLyLichChieu.Phong
{
    public partial class Phong_ThemMoi : System.Web.UI.UserControl
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
                LayDinhDang();
                LayRap();
                HienThiThongTin(id);
            }

        }

        private void HienThiThongTin(string id)
        {
            if (thaotac == "ChinhSua")
            {
                btThemMoi.Text = "Chỉnh Sửa";
                cbThemNhieuPhong.Visible = false;

                DataTable dt = new DataTable();
                dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Phong.Thongtin_Phong_by_Ma(int.Parse(id));
                if (dt.Rows.Count > 0)
                {

                    tbtenPhong.Text = dt.Rows[0]["TenPhong"].ToString();
                    tbSoHangMax.Text = dt.Rows[0]["SoHangMax"].ToString();
                    tbSoCotMax.Text = dt.Rows[0]["SoCotMax"].ToString();
                    ddlDinhDang.SelectedValue = dt.Rows[0]["MaDinhDang"].ToString();
                    ddlRap.SelectedValue = dt.Rows[0]["MaRap"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuPhong.Visible = true;
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

        private void LayRap()
        {
            DataTable dt = new DataTable();
            dt = ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Rap.Thongtin_Rap();
            ddlRap.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlRap.Items.Add(new ListItem(dt.Rows[i]["TenRap"].ToString(), dt.Rows[i]["MaRap"].ToString()));
            }
        }
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Phong.Phong_Inser(tbtenPhong.Text.Trim(), int.Parse(tbSoHangMax.Text)
                    , int.Parse(tbSoCotMax.Text), int.Parse(ddlDinhDang.SelectedValue), int.Parse(ddlRap.SelectedValue));                
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#ff006e;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo sản phẩm: " + tbtenPhong.Text + "</div>";

                if (cbThemNhieuPhong.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập rạp tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=Phong");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa

                ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu.Phong.Phong_Update(int.Parse(id), tbtenPhong.Text.Trim(), int.Parse(tbSoHangMax.Text)
                    , int.Parse(tbSoCotMax.Text), int.Parse(ddlDinhDang.SelectedValue), int.Parse(ddlRap.SelectedValue));

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=QLLichChieu&submodul=Phong");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbtenPhong.Text = "";
            tbSoHangMax.Text = "";
            tbSoCotMax.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}