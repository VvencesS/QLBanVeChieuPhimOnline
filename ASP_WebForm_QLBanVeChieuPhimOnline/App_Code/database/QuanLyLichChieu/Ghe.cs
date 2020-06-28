using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QuanLyLichChieu
{
    public class Ghe
    {
        #region Phương thức xóa Ghế
        /// <summary>
        /// Phương thức xóa Ghế
        /// </summary>
        /// <param name="maGhe"></param>
        public static void Ghe_Delete(int maGhe)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_Ghe] WHERE MaGhe=@maGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maGhe", maGhe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Ghế
        /// <summary>
        /// Phương thức thêm mới Ghế
        /// </summary>
        /// <param name="maPhong"></param>
        /// <param name="maLoaiGhe"></param>
        /// <param name="soGhe"></param>
        /// <param name="maTrangThai"></param>
        public static void Ghe_Inser(int maPhong, int maLoaiGhe, string soGhe, int maTrangThai)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Ghe] ([MaPhong],[MaLoaiGhe],[SoGhe],[MaTrangThai]) "+
                "VALUES(@maPhong,@maLoaiGhe,@soGhe,@maTrangThai)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            cmd.Parameters.AddWithValue("@maLoaiGhe", maLoaiGhe);
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            cmd.Parameters.AddWithValue("@maTrangThai", maTrangThai);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Ghế
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Ghế
        /// </summary>
        /// <param name="maGhe"></param>
        /// <param name="maPhong"></param>
        /// <param name="maLoaiGhe"></param>
        /// <param name="soGhe"></param>
        /// <param name="maTrangThai"></param>
        public static void Ghe_Update(int maGhe, int maPhong, int maLoaiGhe, string soGhe, int maTrangThai)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_Ghe] " +
               "SET[MaPhong] = @maPhong " +
               "   ,[MaLoaiGhe] = @maLoaiGhe " +
               "   ,[SoGhe] = @soGhe " +
               "   ,[MaTrangThai] = @maTrangThai WHERE MaGhe=@maGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            cmd.Parameters.AddWithValue("@maLoaiGhe", maLoaiGhe);
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            cmd.Parameters.AddWithValue("@maTrangThai", maTrangThai);
            cmd.Parameters.AddWithValue("@maGhe", maGhe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Ghế
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Ghế
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Ghe()
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaGhe],[SoGhe],tb_Phong.TenPhong,tb_LoaiGhe.TenLoaiGhe,tb_TrangThai.MoTa " +
              "FROM[dbo].[tb_Ghe] " +
              "INNER JOIN tb_Phong ON tb_Phong.MaPhong = tb_Ghe.MaPhong " +
              "INNER JOIN tb_LoaiGhe ON tb_LoaiGhe.MaLoaiGhe = tb_Ghe.MaPhong " +
              "INNER JOIN tb_TrangThai ON tb_TrangThai.MaTrangThai = tb_Ghe.MaTrangThai");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Ghế theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Ghế theo mã
        /// </summary>
        /// <param name="maGhe"></param>
        /// <returns></returns>
        public static DataTable Thongtin_Ghe_by_Ma(int maGhe)
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaGhe],[SoGhe],tb_Phong.TenPhong,tb_LoaiGhe.TenLoaiGhe,tb_TrangThai.MoTa " +
              "FROM[dbo].[tb_Ghe] " +
              "INNER JOIN tb_Phong ON tb_Phong.MaPhong = tb_Ghe.MaPhong " +
              "INNER JOIN tb_LoaiGhe ON tb_LoaiGhe.MaLoaiGhe = tb_Ghe.MaPhong " +
              "INNER JOIN tb_TrangThai ON tb_TrangThai.MaTrangThai = tb_Ghe.MaTrangThai WHERE MaGhe=@maGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maGhe", maGhe);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}