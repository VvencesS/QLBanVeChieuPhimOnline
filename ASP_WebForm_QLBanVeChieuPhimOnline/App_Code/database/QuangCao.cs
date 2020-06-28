using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database
{
    public class QuangCao
    {
        #region Phương thức xóa quảng cáo
        /// <summary>
        /// Phương thức xóa quảng cáo
        /// </summary>
        /// <param name="maQuangCao"></param>
        public static void QuangCao_Delete(int maQuangCao)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_QuangCao] WHERE MaQuangCao=@maQuangCao");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maQuangCao", maQuangCao);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới quảng cáo
        /// <summary>
        /// Phương thức thêm mới quảng cáo
        /// </summary>
        /// <param name="maLoaiQuangCao"></param>
        /// <param name="anhQC"></param>
        public static void QuangCao_Inser(int maLoaiQuangCao, string anhQC)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_QuangCao] ([MaLoaiQuangCao],[AnhQC]) VALUES(@maLoaiQuangCao,@anhQC)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiQuangCao", maLoaiQuangCao);
            cmd.Parameters.AddWithValue("@anhQC", anhQC);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin quảng cáo
        /// <summary>
        /// Phương thức chỉnh sửa thông tin quảng cáo
        /// </summary>
        /// <param name="maQuangCao"></param>
        /// <param name="maLoaiQuangCao"></param>
        /// <param name="anhQC"></param>
        public static void QuangCao_Update(int maQuangCao, int maLoaiQuangCao, string anhQC)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_QuangCao] SET [MaLoaiQuangCao] = @maLoaiQuangCao,[AnhQC] = @anhQC WHERE MaQuangCao=@maQuangCao");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiQuangCao", maLoaiQuangCao);
            cmd.Parameters.AddWithValue("@anhQC", anhQC);
            cmd.Parameters.AddWithValue("@maQuangCao", maQuangCao);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả quảng cáo
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả quảng cáo
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Combo()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_QuangCao]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin quảng cáo theo mã loại quảng cáo
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin quảng cáo theo mã
        /// </summary>
        /// <param name="maLoaiQuangCao"></param>
        /// <returns></returns>
        public static DataTable Thongtin_QuangCao_by_MaLoaiQuangCao(int maLoaiQuangCao)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_QuangCao] WHERE MaLoaiQuangCao=@maLoaiQuangCao");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiQuangCao", maLoaiQuangCao);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}