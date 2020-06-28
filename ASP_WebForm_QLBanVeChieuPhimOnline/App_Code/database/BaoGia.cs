using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database
{
    public class BaoGia
    {
        #region Phương thức thêm mới báo giá
        /// <summary>
        /// Phương thức thêm mới báo giá
        /// </summary>
        /// <param name="maDinhDang"></param>
        /// <param name="maLoaiGhe"></param>
        /// <param name="maKTG"></param>
        /// <param name="maGia"></param>
        public static void BaoGia_Inser(int maDinhDang, int maLoaiGhe, int maKTG, int maGia)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_BaoGia] ([MaDinhDang],[MaLoaiGhe],[MaKTG],[MaGia]) VALUES(@maDinhDang,@maLoaiGhe,@maKTG,@maGia)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maDinhDang", maDinhDang);
            cmd.Parameters.AddWithValue("@maLoaiGhe", maLoaiGhe);
            cmd.Parameters.AddWithValue("@maKTG", maKTG);
            cmd.Parameters.AddWithValue("@maGia", maGia);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả báo giá
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả khung thời gian
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_BaoGia()
        {
            SqlCommand cmd = new SqlCommand("SELECT tb_DinhDang.TenDinhDang,tb_LoaiGhe.TenLoai,tb_KTG.GioChieu,tb_Gia.DonGia FROM [dbo].[tb_BaoGia]" +
                "INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_BaoGia.MaDinhDang" +
                "INNER JOIN tb_LoaiGhe ON tb_LoaiGhe.MaLoaiGhe = tb_BaoGia.MaLoaiGhe" +
                "INNER JOIN tb_KTG ON tb_KTG.MaKTG = tb_BaoGia.MaKTG" +
                "INNER JOIN tb_Gia ON tb_Gia.MaGia = tb_BaoGia.MaGia");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

    }
}