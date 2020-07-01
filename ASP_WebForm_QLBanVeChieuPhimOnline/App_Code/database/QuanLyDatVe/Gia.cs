using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe
{
    public class Gia
    {
        #region Phương thức xóa giá
        /// <summary>
        /// Phương thức xóa giá
        /// </summary>
        /// <param name="maGia"></param>
        public static void Gia_Delete(int maGia)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_Gia] WHERE MaGia=@maGia");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maGia", maGia);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức thêm mới giá
        /// <summary>
        /// Phương thức thêm mới giá
        /// </summary>
        /// <param name="donGia"></param>
        public static void Gia_Insert(float donGia)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Gia]([DonGia]) VALUES(@donGia)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@donGia", donGia);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức cập nhật giá
        /// <summary>
        /// Phương thức cập nhật giá
        /// </summary>
        /// <param name="maGia"></param>
        /// <param name="donGia"></param>
        public static void Gia_Update(int maGia, float donGia)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_Gia] SET [DonGia] = @donGia WHERE MaGia=@maGia");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@donGia", donGia);
            cmd.Parameters.AddWithValue("@maGia", maGia);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phuong thức lấy tất cả giá
        /// <summary>
        /// Phuong thức lấy tất cả giá
        /// </summary>
        /// <returns></returns>
        public static DataTable LayTatCaGia()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM[dbo].[tb_Gia]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phuong thức lấy giá theo mã giá
        /// <summary>
        /// Phuong thức lấy giá theo mã giá
        /// </summary>
        /// <param name="maGia"></param>
        /// <returns></returns>
        public static DataTable LayGiaMaGia(int maGia)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM[dbo].[tb_Gia] WHERE MaGia=@maGia");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maGia", maGia);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}