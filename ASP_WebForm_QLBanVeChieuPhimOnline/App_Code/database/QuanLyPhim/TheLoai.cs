using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim
{
    public class TheLoai
    {
        #region Phương thức xóa Thể loại
        /// <summary>
        /// Phương thức xóa Thể loại
        /// </summary>
        /// <param name="maTheLoai"></param>
        public static void TheLoai_Delete(int maTheLoai)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_TheLoai] WHERE MaTheLoai=@maTheLoai");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maTheLoai", maTheLoai);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Thể loại
        /// <summary>
        /// Phương thức thêm mới Thể loại
        /// </summary>
        /// <param name="tenTheLoai"></param>
        public static void TheLoai_Inser(string tenTheLoai)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_TheLoai] ([TenTheLoai]) VALUES(@tenTheLoai)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenTheLoai", tenTheLoai);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Thể loại
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Thể loại
        /// </summary>
        /// <param name="maTheLoai"></param>
        /// <param name="tenTheLoai"></param>
        public static void TheLoai_Update(int maTheLoai, string tenTheLoai)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_TheLoai] SET [TenTheLoai] = @tenTheLoai WHERE MaTheLoai=@maTheLoai");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenTheLoai", tenTheLoai);
            cmd.Parameters.AddWithValue("@maTheLoai", maTheLoai);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Thể loại
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Thể loại
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_TheLoai()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_TheLoai");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Thể loại theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Thể loại theo mã
        /// </summary>
        /// <param name="maTheLoai"></param>
        /// <returns></returns>
        public static DataTable Thongtin_TheLoai_by_Ma(int maTheLoai)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_TheLoai WHERE MaTheLoai=@maTheLoai");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maTheLoai", maTheLoai);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}