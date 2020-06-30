using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu
{
    public class TrangThai
    {
        #region Phương thức xóa Trạng thái
        /// <summary>
        /// Phương thức xóa Trạng thái
        /// </summary>
        /// <param name="maTrangThai"></param>
        public static void TrangThai_Delete(int maTrangThai)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_TrangThai] WHERE MaTrangThai=@maTrangThai");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maTrangThai", maTrangThai);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới Trạng thái
        /// <summary>
        /// Phương thức thêm mới Trạng thái
        /// </summary>
        /// <param name="moTa"></param>
        public static void TrangThai_Inser(string moTa)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_TrangThai] ([MoTa]) VALUES(@moTa)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@moTa", moTa);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin Trạng thái
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Trạng thái
        /// </summary>
        /// <param name="maTrangThai"></param>
        /// <param name="moTa"></param>
        public static void TrangThai_Update(int maTrangThai, string moTa)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_TrangThai] SET [MoTa] = @moTa WHERE MaTrangThai=@maTrangThai");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@moTa", moTa);
            cmd.Parameters.AddWithValue("@maTrangThai", maTrangThai);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Trạng thái
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Trạng thái
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_TrangThai()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_TrangThai");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Trạng thái theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Trạng thái theo mã
        /// </summary>
        /// <param name="maTrangThai"></param>
        /// <returns></returns>
        public static DataTable Thongtin_TrangThai_by_Ma(int maTrangThai)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_TrangThai WHERE MaTrangThai=@maTrangThai");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maTrangThai", maTrangThai);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}