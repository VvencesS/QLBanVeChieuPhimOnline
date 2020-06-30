using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyLichChieu
{
    public class Phong
    {
        #region Phương thức xóa phòng
        /// <summary>
        /// Phương thức xóa phòng
        /// </summary>
        /// <param name="maPhong"></param>
        public static void Phong_Delete(int maPhong)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_Phong] WHERE MaPhong=@maPhong");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới phòng
        /// <summary>
        /// Phương thức thêm mới phòng
        /// </summary>
        /// <param name="tenPhong"></param>
        /// <param name="soHangMax"></param>
        /// <param name="soCotMax"></param>
        /// <param name="maDinhDang"></param>
        /// <param name="maRap"></param>
        public static void Phong_Inser(string tenPhong, int soHangMax, int soCotMax, int maDinhDang, int maRap)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Phong] ([TenPhong],[SoHangMax],[SoCotMax],[MaDinhDang],[MaRap]) VALUES(@tenPhong,@soHangMax,@soCotMax,@maDinhDang,@maRap)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenPhong", tenPhong);
            cmd.Parameters.AddWithValue("@soHangMax", soHangMax);
            cmd.Parameters.AddWithValue("@soCotMax", soCotMax);
            cmd.Parameters.AddWithValue("@maDinhDang", maDinhDang);
            cmd.Parameters.AddWithValue("@maRap", maRap);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin phòng
        /// <summary>
        /// Phương thức chỉnh sửa thông tin phòng
        /// </summary>
        /// <param name="maPhong"></param>
        /// <param name="tenPhong"></param>
        /// <param name="soHangMax"></param>
        /// <param name="soCotMax"></param>
        /// <param name="maDinhDang"></param>
        /// <param name="maRap"></param>
        public static void Phong_Update(int maPhong, string tenPhong, int soHangMax, int soCotMax, int maDinhDang, int maRap)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_Phong]" +
               "SET[TenPhong] = @tenPhong" +
               "   ,[SoHangMax] = @soHangMax" +
               "   ,[SoCotMax] = @soCotMax" +
               "   ,[MaDinhDang] = @maDinhDang" +
               "   ,[MaRap] = @maRap" +
               "WHERE MaPhong=@maPhong");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenPhong", tenPhong);
            cmd.Parameters.AddWithValue("@soHangMax", soHangMax);
            cmd.Parameters.AddWithValue("@soCotMax", soCotMax);
            cmd.Parameters.AddWithValue("@maDinhDang", maDinhDang);
            cmd.Parameters.AddWithValue("@maRap", maRap);
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả phòng
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả phòng
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Phong()
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaPhong]"+
              "    ,[TenPhong]" +
              "    ,[SoHangMax]" +
              "    ,[SoCotMax]" +
              "    , tb_DinhDang.TenDinhDang" +
              "    , tb_Rap.TenRap" +
              "FROM[dbo].[tb_Phong]" +
              "INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_Phong.MaDinhDang" +
              "INNER JOIN tb_Rap ON tb_Rap.MaRap = tb_Phong.MaRap"); 
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin phòng theo mã
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin phòng theo mã
        /// </summary>
        /// <param name="maPhong"></param>
        /// <returns></returns>
        public static DataTable Thongtin_Phong_by_Ma(int maPhong)
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaPhong]" +
              "    ,[TenPhong]" +
              "    ,[SoHangMax]" +
              "    ,[SoCotMax]" +
              "    , tb_DinhDang.TenDinhDang" +
              "    , tb_Rap.TenRap" +
              "FROM[dbo].[tb_Phong]" +
              "INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_Phong.MaDinhDang" +
              "INNER JOIN tb_Rap ON tb_Rap.MaRap = tb_Phong.MaRap WHERE MaPhong=@maPhong");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}