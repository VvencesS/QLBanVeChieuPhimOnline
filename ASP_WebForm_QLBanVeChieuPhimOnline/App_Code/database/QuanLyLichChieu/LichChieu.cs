using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu
{
    public class LichChieu
    {
        #region Phương thức xóa lịch chiếu theo mã 
        /// <summary>
        /// Phương thức xóa lịch chiếu theo mã 
        /// </summary>
        /// <param name="maLichChieu"></param>
        public static void LichChieu_Delete_By_Ma(int maLichChieu)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_LichChieu] WHERE MaLichChieu=@maLichChieu");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLichChieu", maLichChieu);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức thêm mới lịch chiếu
        /// <summary>
        /// Phương thức thêm mới lịch chiếu
        /// </summary>
        /// <param name="maKTG"></param>
        /// <param name="maPhim"></param>
        /// <param name="maPhong"></param>
        public static void LichChieu_Inser(int maKTG, int maPhim, int maPhong)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_LichChieu] ([MaKTG],[MaPhim],[MaPhong]) VALUES(@maKTG,@maPhim,@maPhong)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maKTG", maKTG);
            cmd.Parameters.AddWithValue("@maPhim", maPhim);
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region  Phương thức chỉnh sửa thông tin Lịch chiếu theo mã
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Lịch chiếu theo mã 
        /// </summary>
        /// <param name="maLichChieu"></param>
        /// <param name="maPhim"></param>
        /// <param name="maKTG"></param>
        /// <param name="maPhong"></param>
        public static void LichChieu_Update_By_Ma(int maLichChieu, int maPhim, int maKTG, int maPhong)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_LichChieu] "+
               "SET maPhim = @maPhim " +
               ",[MaKTG] = @maKTG " +
               "   ,[MaPhong] = @maPhong " +
               "WHERE MaLichChieu=@maLichChieu");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maKTG", maKTG);
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            cmd.Parameters.AddWithValue("@maPhim", maPhim);
            cmd.Parameters.AddWithValue("@maLichChieu", maLichChieu);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Lịch chiếu
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Lịch chiếu
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_LichChieu()
        {
            SqlCommand cmd = new SqlCommand("SELECT MaLichChieu,tb_Phim.TenPhim,tb_Phim.MaPhim,tb_Phim.AnhDaiDien,tb_DinhDang.TenDinhDang,tb_Phong.TenPhong,tb_Phong.MaPhong,tb_KTG.MaKTG,tb_KTG.NgayChieu,tb_KTG.GioChieu " +
              "FROM[dbo].[tb_LichChieu] " +
              "INNER JOIN tb_KTG ON tb_KTG.MaKTG = tb_LichChieu.MaKTG " +
              "INNER JOIN tb_Phim ON tb_Phim.MaPhim = tb_LichChieu.MaPhim " +
              "INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_Phim.MaDinhDang " +
              "INNER JOIN tb_Phong ON tb_Phong.MaPhong = tb_LichChieu.MaPhong");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Lịch chiếu theo mã 
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Lịch chiếu theo mã 
        /// </summary>
        /// <param name="maLichChieu"></param>
        /// <returns></returns>
        public static DataTable Thongtin_LichChieu_by_Ma(int maLichChieu)
        {
            SqlCommand cmd = new SqlCommand("SELECT tb_Phim.TenPhim,tb_Phim.MaPhim,tb_Phim.AnhDaiDien,tb_DinhDang.TenDinhDang,tb_Phong.TenPhong,tb_Phong.MaPhong,tb_KTG.MaKTG,tb_KTG.NgayChieu,tb_KTG.GioChieu FROM [dbo].[tb_LichChieu] INNER JOIN tb_KTG ON tb_KTG.MaKTG = tb_LichChieu.MaKTG INNER JOIN tb_Phim ON tb_Phim.MaPhim = tb_LichChieu.MaPhim INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_Phim.MaDinhDang INNER JOIN tb_Phong ON tb_Phong.MaPhong = tb_LichChieu.MaPhong WHERE tb_LichChieu.MaLichChieu=@maLichChieu");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLichChieu", maLichChieu);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách thông tin Lịch chiếu theo mã phim 
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Lịch chiếu theo mã phim 
        /// </summary>
        /// <param name="maPhim"></param>
        /// <returns></returns>
        public static DataTable Thongtin_NgayChieu_by_MaPhim(int maPhim)
        {
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT tb_KTG.NgayChieu " +
              "FROM[dbo].[tb_LichChieu] " +
              "INNER JOIN tb_KTG ON tb_KTG.MaKTG = tb_LichChieu.MaKTG " +
              "WHERE tb_LichChieu.MaPhim = @maPhim");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhim", maPhim);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách thông tin giờ chiếu theo mã phim và ngày chiếu
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin giờ chiếu theo mã phim và ngày chiếu
        /// </summary>
        /// <param name="maPhim"></param>
        /// <param name="ngayChieu"></param>
        /// <returns></returns>
        public static DataTable Thongtin_GioChieu_by_MaPhim_NgayChieu(int maPhim, DateTime ngayChieu)
        {
            SqlCommand cmd = new SqlCommand("SELECT  tb_KTG.GioChieu " +
              "FROM[dbo].[tb_LichChieu] " +
              "INNER JOIN tb_KTG ON tb_KTG.MaKTG = tb_LichChieu.MaKTG " +
              "WHERE tb_LichChieu.MaPhim = @maPhim " +
              "AND NgayChieu=@ngayChieu");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhim", maPhim);
            cmd.Parameters.AddWithValue("@ngayChieu", ngayChieu);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách phim mới nhất
        /// <summary>
        /// Phương thức lấy ra danh sách phim mới nhất
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_PhimMoiNhat()
        {
            SqlCommand cmd = new SqlCommand("SELECT TOP(4) MaLichChieu,tb_Phim.TenPhim,tb_Phim.MaPhim,tb_Phim.AnhDaiDien,tb_DinhDang.TenDinhDang,tb_Phong.TenPhong,tb_Phong.MaPhong,tb_KTG.MaKTG,tb_KTG.NgayChieu,tb_KTG.GioChieu " +
              "FROM[dbo].[tb_LichChieu] " +
              "INNER JOIN tb_KTG ON tb_KTG.MaKTG = tb_LichChieu.MaKTG " +
              "INNER JOIN tb_Phim ON tb_Phim.MaPhim = tb_LichChieu.MaPhim " +
              "INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_Phim.MaDinhDang " +
              "INNER JOIN tb_Phong ON tb_Phong.MaPhong = tb_LichChieu.MaPhong " +
              "ORDER BY tb_KTG.NgayChieu DESC");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}