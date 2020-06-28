using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QuanLyPhim
{
    public class DinhDang
    {
        #region Phương thức xóa Định dạng
        /// <summary>
        /// Phương thức xóa Định dạng
        /// </summary>
        /// <param name="maDinhDang"></param>
        public static void DinhDang_Delete(int maDinhDang)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_DinhDang] WHERE MaDinhDang=@maDinhDang");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maDinhDang", maDinhDang);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Định dạng
        /// <summary>
        /// Phương thức thêm mới Định dạng
        /// </summary>
        /// <param name="tenDinhDang"></param>
        public static void DinhDang_Inser(string tenDinhDang)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_DinhDang] ([TenDinhDang]) VALUES(@tenDinhDang)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenDinhDang", tenDinhDang);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Định dạng
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Định dạng
        /// </summary>
        /// <param name="maDinhDang"></param>
        /// <param name="tenDinhDang"></param>
        public static void DinhDang_Update(int maDinhDang, string tenDinhDang)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_DinhDang] SET [TenDinhDang] = @tenDinhDang WHERE MaDinhDang=@maDinhDang");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenDinhDang", tenDinhDang);
            cmd.Parameters.AddWithValue("@maDinhDang", maDinhDang);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Định dạng
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Định dạng
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_DinhDang()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_DinhDang");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Định dạng theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Định dạng theo mã
        /// </summary>
        /// <param name="maDinhDang"></param>
        /// <returns></returns>
        public static DataTable Thongtin_DinhDang_by_Ma(int maDinhDang)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_DinhDang WHERE MaDinhDang=@maDinhDang");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maDinhDang", maDinhDang);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}