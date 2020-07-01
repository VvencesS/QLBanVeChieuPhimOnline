using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyTTVaQC
{
    public class TinTuc
    {
        #region Phương thức xóa tin tức
        /// <summary>
        /// Phương thức xóa tin tức
        /// </summary>
        /// <param name="maTinTuc"></param>
        public static void TinTuc_Delete(int maTinTuc)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_TinTuc] WHERE MaTinTuc=@maTinTuc");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maTinTuc", maTinTuc);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới tin tức
        /// <summary>
        /// Phương thức thêm mới tin tức
        /// </summary>
        /// <param name="tieuDe"></param>
        /// <param name="noiDung"></param>
        /// <param name="maLoaiTinTuc"></param>
        public static void TinTuc_Insert(string tieuDe, string noiDung, int maLoaiTinTuc,DateTime ngayThem)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_TinTuc] ([TieuDe],[NoiDung],[MaLoaiTinTuc],NgayThem) VALUES(@tieuDe,@noiDung,@maLoaiTinTuc,@ngayThem)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiTinTuc", maLoaiTinTuc);
            cmd.Parameters.AddWithValue("@tieuDe", tieuDe);
            cmd.Parameters.AddWithValue("@noiDung", noiDung);
            cmd.Parameters.AddWithValue("@ngayThem", ngayThem);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin tin tức
        /// <summary>
        /// Phương thức chỉnh sửa thông tin tin tức
        /// </summary>
        /// <param name="maTinTuc"></param>
        /// <param name="tieuDe"></param>
        /// <param name="noiDung"></param>
        /// <param name="maLoaiTinTuc"></param>
        public static void TinTuc_Update(int maTinTuc, string tieuDe, string noiDung, int maLoaiTinTuc)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_TinTuc] " +
               "SET[TieuDe] = @tieuDe " +
               "   ,[NoiDung] = @noiDung " +
               "   ,[MaLoaiTinTuc] = @maLoaiTinTuc WHERE MaTinTuc=@maTinTuc");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maTinTuc", maTinTuc);
            cmd.Parameters.AddWithValue("@maLoaiTinTuc", maLoaiTinTuc);
            cmd.Parameters.AddWithValue("@tieuDe", tieuDe);
            cmd.Parameters.AddWithValue("@noiDung", noiDung);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả tin tức
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả tin tức
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_TinTuc()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_TinTuc]");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách thông tin tin tức theo mã loại tin tức
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin tin tức theo mã loại tin tức
        /// </summary>
        /// <param name="maLoaiTinTuc"></param>
        /// <returns></returns>
        public static DataTable Thongtin_TinTuc_by_MaLoaiTinTuc(int maLoaiTinTuc)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_TinTuc] WHERE MaLoaiTinTuc=@maLoaiTinTuc");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maLoaiTinTuc", maLoaiTinTuc);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách thông tin tin tức theo mã tin tức
        /// <summary>
        /// Phương thức lấy ra danh sách thông tin tin tức theo mã tin tức
        /// </summary>
        /// <param name="maTinTuc"></param>
        /// <returns></returns>
        public static DataTable Thongtin_TinTuc_by_MaTinTuc(int maTinTuc)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[tb_TinTuc] WHERE MaTinTuc=@maTinTuc");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maTinTuc", maTinTuc);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}