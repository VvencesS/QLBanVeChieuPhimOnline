using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QuanLyTTVaQC
{
    public class LoaiQuangCao
    {
        #region Phương thức xóa Loại quảng cáo
        /// <summary>
        /// Phương thức xóa Loại quảng cáo
        /// </summary>
        /// <param name="maLoaiQuangCao"></param>
        public static void LoaiQuangCao_Delete(int maLoaiQuangCao)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_LoaiQuangCao] WHERE MaLoaiQuangCao=@maLoaiQuangCao");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiQuangCao", maLoaiQuangCao);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Loại quảng cáo
        /// <summary>
        /// Phương thức thêm mới Loại quảng cáo
        /// </summary>
        /// <param name="tenLoaiQuangCao"></param>
        public static void LoaiQuangCao_Inser(string tenLoaiQuangCao)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_LoaiQuangCao] ([TenLoaiQuangCao]) VALUES(@tenLoaiQuangCao)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenLoaiQuangCao", tenLoaiQuangCao);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Loại quảng cáo
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Loại quảng cáo
        /// </summary>
        /// <param name="maLoaiQuangCao"></param>
        /// <param name="tenLoaiQuangCao"></param>
        public static void LoaiQuangCao_Update(int maLoaiQuangCao, string tenLoaiQuangCao)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_LoaiQuangCao] SET [TenLoaiQuangCao] = @tenLoaiQuangCao WHERE MaLoaiQuangCao=@maLoaiQuangCao");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenLoaiQuangCao", tenLoaiQuangCao);
            cmd.Parameters.AddWithValue("@maLoaiQuangCao", maLoaiQuangCao);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả loại quảng cáo
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả loại quảng cáo
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_LoaiQuangCao()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_LoaiQuangCao]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin loại quảng cáo theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin loại quảng cáo theo mã
        /// </summary>
        /// <param name="maLoaiQuangCao"></param>
        /// <returns></returns>
        public static DataTable Thongtin_LoaiquangCao_by_MaLoaiQuangCao(int maLoaiQuangCao)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_LoaiQuangCao] WHERE MaLoaiQuangCao=@maLoaiQuangCao");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiQuangCao", maLoaiQuangCao);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}