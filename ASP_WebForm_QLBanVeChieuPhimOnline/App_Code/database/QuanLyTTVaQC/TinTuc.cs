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
        /// <param name="anhDaiDien"></param>
        /// <param name="tieuDe"></param>
        /// <param name="tomTatTin"></param>
        /// <param name="noiDung"></param>
        /// <param name="maLoaiTinTuc"></param>
        /// <param name="ngayThem"></param>
        public static void TinTuc_Insert(string anhDaiDien, string tieuDe, string tomTatTin, string noiDung, int maLoaiTinTuc,DateTime ngayThem)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_TinTuc] (AnhDaiDien,[TieuDe],TomTatTin,[NoiDung],[MaLoaiTinTuc],NgayThem) VALUES(@anhDaiDien,@tieuDe,@tomTatTin,@noiDung,@maLoaiTinTuc,@ngayThem)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@anhDaiDien", anhDaiDien);
            cmd.Parameters.AddWithValue("@maLoaiTinTuc", maLoaiTinTuc);
            cmd.Parameters.AddWithValue("@tieuDe", tieuDe);
            cmd.Parameters.AddWithValue("@tomTatTin", tomTatTin);
            cmd.Parameters.AddWithValue("@noiDung", noiDung);
            cmd.Parameters.AddWithValue("@ngayThem", ngayThem);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin tin tức
        /// <summary>
        /// Phương thức chỉnh sửa thông tin tin tức
        /// </summary>
        /// <param name="anhDaiDien"></param>
        /// <param name="maTinTuc"></param>
        /// <param name="tieuDe"></param>
        /// <param name="noiDung"></param>
        /// <param name="maLoaiTinTuc"></param>
        public static void TinTuc_Update(string anhDaiDien, int maTinTuc, string tieuDe, string tomTatTin, string noiDung, int maLoaiTinTuc)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_TinTuc] " +
               "SET AnhDaiDien = @anhDaiDien" +
               ",[TieuDe] = @tieuDe " +
               ",TomTatTin = @tomTatTin" +
               "   ,[NoiDung] = @noiDung " +
               "   ,[MaLoaiTinTuc] = @maLoaiTinTuc WHERE MaTinTuc=@maTinTuc");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@anhDaiDien", anhDaiDien);
            cmd.Parameters.AddWithValue("@maTinTuc", maTinTuc);
            cmd.Parameters.AddWithValue("@maLoaiTinTuc", maLoaiTinTuc);
            cmd.Parameters.AddWithValue("@tieuDe", tieuDe);
            cmd.Parameters.AddWithValue("@tomTatTin", tomTatTin);
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
            SqlCommand cmd = new SqlCommand("SELECT [MaTinTuc],[AnhDaiDien],[TieuDe],[TomTatTin],[NoiDung],tb_LoaiTinTuc.[MaLoaiTinTuc],tb_LoaiTinTuc.TenLoaiTinTuc,[NgayThem] " +
                "FROM[dbo].[tb_TinTuc] " +
                "INNER JOIN tb_LoaiTinTuc ON tb_LoaiTinTuc.MaLoaiTinTuc = tb_TinTuc.MaLoaiTinTuc");
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