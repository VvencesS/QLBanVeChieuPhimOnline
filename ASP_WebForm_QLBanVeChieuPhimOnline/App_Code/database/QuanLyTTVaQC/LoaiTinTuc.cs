using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC
{
    public class LoaiTinTuc
    {
        #region Phương thức xóa Loại tin tức
        /// <summary>
        /// Phương thức xóa Loại tin tức
        /// </summary>
        /// <param name="maLoaiTinTuc"></param>
        public static void LoaiTinTuc_Delete(int maLoaiTinTuc)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_LoaiTinTuc] WHERE MaLoaiTinTuc=@maLoaiTinTuc");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiTinTuc", maLoaiTinTuc);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Loại tin tức
        /// <summary>
        /// Phương thức thêm mới Loại tin tức
        /// </summary>
        /// <param name="tenLoaiTinTuc"></param>
        public static void LoaiTinTuc_Inser(string tenLoaiTinTuc)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_LoaiTinTuc] ([TenLoaiTinTuc]) VALUES(@tenLoaiTinTuc)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenLoaiTinTuc", tenLoaiTinTuc);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Loại tin tức
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Loại tin tức
        /// </summary>
        /// <param name="maLoaiTinTuc"></param>
        /// <param name="tenLoaiTinTuc"></param>
        public static void LoaiTinTuc_Update(int maLoaiTinTuc, string tenLoaiTinTuc)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_LoaiTinTuc] SET [TenLoaiTinTuc] = @tenLoaiTinTuc WHERE MaLoaiTinTuc=@maLoaiTinTuc");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenLoaiTinTuc", tenLoaiTinTuc);
            cmd.Parameters.AddWithValue("@maLoaiTinTuc", maLoaiTinTuc);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả loại tin tức
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả loại tin tức
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_LoaiTinTuc()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_LoaiTinTuc]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin loại tin tức theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin loại tin tức theo mã
        /// </summary>
        /// <param name="maLoaiTinTuc"></param>
        /// <returns></returns>
        public static DataTable Thongtin_LoaiTinTuc_by_MaLoaiTinTuc(int maLoaiTinTuc)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_LoaiTinTuc] WHERE MaLoaiTinTuc=@maLoaiTinTuc");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiTinTuc", maLoaiTinTuc);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}