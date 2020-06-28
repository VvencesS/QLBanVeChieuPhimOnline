using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QuanLyLichChieu
{
    public class LoaiGhe
    {
        #region  Phương thức chỉnh sửa thông tin Loại Ghế
        /// <summary>
        /// Phương thức chỉnh sửa thông tin Loại Ghế
        /// </summary>
        /// <param name="maLoaiGhe"></param>
        /// <param name="tenLoaiGhe"></param>
        public static void LoaiGhe_Update(int maLoaiGhe, string tenLoaiGhe)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_LoaiGhe] SET [TenLoaiGhe] = @tenLoaiGhe WHERE MaLoaiGhe=@maLoaiGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenLoaiGhe", tenLoaiGhe);
            cmd.Parameters.AddWithValue("@maLoaiGhe", maLoaiGhe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả Loại Ghế
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả Loại Ghế
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_LoaiGhe()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_LoaiGhe");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin Loại Ghế theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin Loại Ghế theo mã
        /// </summary>
        /// <param name="maLoaiGhe"></param>
        /// <returns></returns>
        public static DataTable Thongtin_LoaiGhe_by_Ma(int maLoaiGhe)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_LoaiGhe WHERE MaLoaiGhe=@maLoaiGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiGhe", maLoaiGhe);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}