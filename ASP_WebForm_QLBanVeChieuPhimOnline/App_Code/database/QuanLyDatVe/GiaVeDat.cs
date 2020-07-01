using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyDatVe
{
    public class GiaVeDat
    {
        #region Phương thức thêm mới giá vé đặt
        /// <summary>
        /// Phương thức thêm mới giá vé đặt
        /// </summary>
        /// <param name="maGia"></param>
        /// <param name="maVe"></param>
        public static void GiaVeDat_Insert(int maGia, int maVe)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_GiaVeDat] ([MaGia],[MaVe]) VALUES(@maGia,@maVe)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maGia", maGia);
            cmd.Parameters.AddWithValue("@maVe", maVe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức xóa Giá vé đặt
        /// <summary>
        /// Phương thức xóa Giá vé đặt
        /// </summary>
        /// <param name="maVe"></param>
        public static void GiaVeDat_Delete(int maVe)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_GiaVeDat] WHERE maVe=@maVe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maVe", maVe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
    }
}