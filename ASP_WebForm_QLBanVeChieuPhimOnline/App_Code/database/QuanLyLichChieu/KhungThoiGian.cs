using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu
{
    public class KhungThoiGian
    {
        #region Phương thức xóa khung thời gian
        /// <summary>
        /// Phương thức xóa khung thời gian
        /// </summary>
        /// <param name="maKTG"></param>
        public static void KTG_Delete(int maKTG)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_KTG] WHERE MaKTG=@maKTG");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maKTG", maKTG);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới khung thời gian
        /// <summary>
        /// Phương thức thêm mới khung thời gian
        /// </summary>
        /// <param name="ngayChieu"></param>
        /// <param name="gioChieu"></param>
        public static void KTG_Inser(DateTime ngayChieu, DateTime gioChieu)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_KTG]([NgayChieu],[GioChieu]) VALUES(@ngayChieu,@gioChieu)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ngayChieu", ngayChieu);
            cmd.Parameters.AddWithValue("@gioChieu", gioChieu);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin khung thời gian
        /// <summary>
        /// Phương thức chỉnh sửa thông tin khung thời gian
        /// </summary>
        /// <param name="maKTG"></param>
        /// <param name="ngayChieu"></param>
        /// <param name="gioChieu"></param>
        public static void KTG_Update(int maKTG, DateTime ngayChieu, DateTime gioChieu)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_KTG] SET [NgayChieu] = @ngayChieu,[GioChieu] = @gioChieu  WHERE MaKTG=@maKTG");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ngayChieu", ngayChieu);
            cmd.Parameters.AddWithValue("@gioChieu", gioChieu);
            cmd.Parameters.AddWithValue("@maKTG", maKTG);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả khung thời gian
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả khung thời gian
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_KTG()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_KTG]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin khung thời gian theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin khung thời gian theo mã
        /// </summary>
        /// <param name="maKTG"></param>
        /// <returns></returns>
        public static DataTable Thongtin_KTG_by_MaKTG(int maKTG)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_KTG] WHERE MaKTG=@maKTG");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maKTG", maKTG);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}