using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim
{
    public class QuocGia
    {
        #region Phương thức xóa Quốc gia
        /// <summary>
        /// Phương thức xóa Quốc gia
        /// </summary>
        /// <param name="maQuocGia"></param>
        public static void QuocGia_Delete(int maQuocGia)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_QuocGia] WHERE MaQuocGia=@maQuocGia");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maQuocGia", maQuocGia);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Quốc gia
        /// <summary>
        /// Phương thức thêm mới Quốc gia
        /// </summary>
        /// <param name="tenQuocGia"></param>
        public static void QuocGia_Inser(string tenQuocGia)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_QuocGia] ([TenQuocGia]) VALUES(@tenQuocGia)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenQuocGia", tenQuocGia);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Quốc gia
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Quốc gia
        /// </summary>
        /// <param name="maQuocGia"></param>
        /// <param name="tenQuocGia"></param>
        public static void QuocGia_Update(int maQuocGia, string tenQuocGia)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_QuocGia] SET [TenQuocGia] = @tenQuocGia WHERE MaQuocGia=@maQuocGia");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenQuocGia", tenQuocGia);
            cmd.Parameters.AddWithValue("@maQuocGia", maQuocGia);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả quốc gia
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả quốc gia
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_QuocGia()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_QuocGia");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin quốc gia theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin quốc gia theo mã
        /// </summary>
        /// <param name="maQuocGia"></param>
        /// <returns></returns>
        public static DataTable Thongtin_QuocGia_by_Ma(int maQuocGia)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_QuocGia WHERE MaQuocGia=@maQuocGia");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maQuocGia", maQuocGia);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}