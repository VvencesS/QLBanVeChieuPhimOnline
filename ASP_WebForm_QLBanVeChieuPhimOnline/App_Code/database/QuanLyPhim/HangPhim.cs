using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim
{
    public class HangPhim
    {
        #region Phương thức xóa Hãng phim
        /// <summary>
        /// Phương thức xóa Hãng phim
        /// </summary>
        /// <param name="maHangPhim"></param>
        public static void HangPhim_Delete(int maHangPhim)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_HangPhim] WHERE MaHangPhim=@maHangPhim");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maHangPhim", maHangPhim);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Hãng phim
        /// <summary>
        /// Phương thức thêm mới Hãng phim
        /// </summary>
        /// <param name="tenHangPhim"></param>
        public static void HangPhim_Inser(string tenHangPhim)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_HangPhim] ([TenHangPhim]) VALUES(@tenHangPhim)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenHangPhim", tenHangPhim);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Hãng phim
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Hãng phim
        /// </summary>
        /// <param name="maHangPhim"></param>
        /// <param name="tenHangPhim"></param>
        public static void HangPhim_Update(int maHangPhim, string tenHangPhim)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_HangPhim] SET [TenHangPhim] = @tenHangPhim WHERE MaHangPhim=@maHangPhim");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenHangPhim", tenHangPhim);
            cmd.Parameters.AddWithValue("@maHangPhim", maHangPhim);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả Hãng phim
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Hãng phim
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_HangPhim()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_HangPhim]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Hãng phim theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Hãng phim theo mã
        /// </summary>
        /// <param name="maHangPhim"></param>
        /// <returns></returns>
        public static DataTable Thongtin_HangPhim_by_MaHangPhim(int maHangPhim)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_HangPhim] WHERE MaHangPhim=@maHangPhim");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maHangPhim", maHangPhim);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}