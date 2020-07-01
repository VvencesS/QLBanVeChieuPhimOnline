using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu
{
    public class SoGhe
    {
        #region  Phương thức xóa thông tin Số ghế
        /// <summary>
        /// Phương thức xóa thông tin Số ghế
        /// </summary>
        /// <param name="soGhe"></param>
        public static void SoGhe_Delete(string soGhe)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_SoGhe] WHERE SoGhe=@SoGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region  Phương thức thêm mới thông tin Số ghế
        /// <summary>
        /// Phương thức thêm mới thông tin Số ghế
        /// </summary>
        /// <param name="soGhe"></param>
        /// <param name="soHang"></param>
        /// <param name="soCot"></param>
        public static void SoGhe_Insert(string soGhe, string soHang, string soCot)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_SoGhe] ([SoGhe],[SoHang],[SoCot]) "+
                "VALUES(@soGhe,@soHang,@soCot)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@soHang", soHang);
            cmd.Parameters.AddWithValue("@soCot", soCot);
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region  Phương thức chỉnh sửa thông tin Số ghế
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Số ghế
        /// </summary>
        /// <param name="soGhe"></param>
        /// <param name="soHang"></param>
        /// <param name="soCot"></param>
        public static void SoGhe_Update(string soGhe, string soHang, string soCot)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_SoGhe] "+
               "SET [SoHang] = @soHang "+
               "   ,[SoCot] = @soCot WHERE soGhe=@soGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@soHang", soHang);
            cmd.Parameters.AddWithValue("@soCot", soCot);
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Số ghế
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Số ghế
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_SoGhe()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_SoGhe");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Số ghế theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Số ghế theo mã
        /// </summary>
        /// <param name="soGhe"></param>
        /// <returns></returns>
        public static DataTable Thongtin_SoGhe_by_Ma(string soGhe)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_SoGhe WHERE soGhe=@soGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}