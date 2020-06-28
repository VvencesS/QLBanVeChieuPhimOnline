using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QuanLyDatVe
{
    public class Combo
    {
        #region Phương thức xóa Combo
        /// <summary>
        /// Phương thức xóa Combo
        /// </summary>
        /// <param name="maCombo"></param>
        public static void Combo_Delete(int maCombo)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_Combo] WHERE MaCombo=@maCombo");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maCombo", maCombo);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Combo
        /// <summary>
        /// Phương thức thêm mới Combo
        /// </summary>
        /// <param name="tenCombo"></param>
        /// <param name="moTa"></param>
        /// <param name="gia"></param>
        public static void Combo_Inser(string tenCombo, string moTa, float gia)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Combo] ([TenComBo],[MoTa],[Gia]) VALUES(@tenCombo,@moTa,@gia)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenCombo", tenCombo);
            cmd.Parameters.AddWithValue("@moTa", moTa);
            cmd.Parameters.AddWithValue("@gia", gia);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Combo
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Combo
        /// </summary>
        /// <param name="maCombo"></param>
        /// <param name="tenCombo"></param>
        /// <param name="moTa"></param>
        /// <param name="gia"></param>
        public static void Combo_Update(int maCombo, string tenCombo, string moTa, float gia)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_Combo] SET [TenComBo] = @tenCombo,[MoTa] = @moTa,[Gia] = @gia WHERE MaCombo=@maCombo");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenCombo", tenCombo);
            cmd.Parameters.AddWithValue("@moTa", moTa);
            cmd.Parameters.AddWithValue("@gia", gia);
            cmd.Parameters.AddWithValue("@maCombo", maCombo);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả Combo
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Combo
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Combo()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_Combo]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Combo theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Combo theo mã
        /// </summary>
        /// <param name="maCombo"></param>
        /// <returns></returns>
        public static DataTable Thongtin_Combo_by_MaCombo(int maCombo)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_Combo] WHERE MaCombo=@maCombo");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maCombo", maCombo);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}