using ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP_WebForm_QLBanVeChieuPhimOnline.App_Code.database.QuanLyPhim
{
    public class Phim
    {
        #region Phương thức xóa phim
        /// <summary>
        /// Phương thức xóa phim
        /// </summary>
        /// <param name="maPhim"></param>
        public static void Phim_Delete(int maPhim)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_Phim] WHERE MaPhim=@maPhim");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhim", maPhim);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức thêm mới phim
        /// <summary>
        /// Phương thức thêm mới phim
        /// </summary>
        /// <param name="tenPhim"></param>
        /// <param name="anhDaiDien"></param>
        /// <param name="maTheLoai"></param>
        /// <param name="maQuocGia"></param>
        /// <param name="thoiLuong"></param>
        /// <param name="khoiChieu"></param>
        /// <param name="ketThuc"></param>
        /// <param name="daoDien"></param>
        /// <param name="noiDung"></param>
        /// <param name="trailer"></param>
        /// <param name="maDinhDang"></param>
        /// <param name="maNhanVien"></param>
        /// <param name="maHangPhim"></param>
        public static void Phim_Insert(string tenPhim, string anhDaiDien, int maTheLoai, int maQuocGia, string thoiLuong, DateTime khoiChieu, DateTime ketThuc, string daoDien, string noiDung, string trailer, int maDinhDang, int maNhanVien, int maHangPhim)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Phim] ([TenPhim],[AnhDaiDien],[MaTheLoai],[MaQuocGia],[ThoiLuong],[KhoiChieu],[KetThuc],[DaoDien],[NoiDung],[Trailer],[MaDinhDang],[MaNhanVien],[MaHangPhim]) " +
                "VALUES(@tenPhim,@anhDaiDien,@maTheLoai,@maQuocGia,@thoiLuong,@khoiChieu,@ketThuc,@daoDien,@noiDung,@trailer,@maDinhDang,@maNhanVien,@maHangPhim)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenPhim", tenPhim);
            cmd.Parameters.AddWithValue("@anhDaiDien", anhDaiDien);
            cmd.Parameters.AddWithValue("@maTheLoai", maTheLoai);
            cmd.Parameters.AddWithValue("@maQuocGia", maQuocGia);
            cmd.Parameters.AddWithValue("@thoiLuong", thoiLuong);
            cmd.Parameters.AddWithValue("@khoiChieu", khoiChieu);
            cmd.Parameters.AddWithValue("@ketThuc", ketThuc);
            cmd.Parameters.AddWithValue("@daoDien", daoDien);
            cmd.Parameters.AddWithValue("@noiDung", noiDung);
            cmd.Parameters.AddWithValue("@trailer", trailer);
            cmd.Parameters.AddWithValue("@maDinhDang", maDinhDang);
            cmd.Parameters.AddWithValue("@maNhanVien", maNhanVien);
            cmd.Parameters.AddWithValue("@maHangPhim", maHangPhim);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức chỉnh sửa phim
        /// <summary>
        /// Phương thức chỉnh sửa phim
        /// </summary>
        /// <param name="maPhim"></param>
        /// <param name="tenPhim"></param>
        /// <param name="anhDaiDien"></param>
        /// <param name="maTheLoai"></param>
        /// <param name="maQuocGia"></param>
        /// <param name="thoiLuong"></param>
        /// <param name="khoiChieu"></param>
        /// <param name="ketThuc"></param>
        /// <param name="daoDien"></param>
        /// <param name="noiDung"></param>
        /// <param name="trailer"></param>
        /// <param name="maDinhDang"></param>
        /// <param name="maNhanVien"></param>
        /// <param name="maHangPhim"></param>
        public static void Phim_Update(int maPhim, string tenPhim, string anhDaiDien, int maTheLoai, int maQuocGia, string thoiLuong, DateTime khoiChieu, DateTime ketThuc, string daoDien, string noiDung, string trailer, int maDinhDang, int maNhanVien, int maHangPhim)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_Phim] " +
               "SET[TenPhim] = @tenPhim" +
                "  ,[AnhDaiDien] = @anhDaiDien" +
                "  ,[MaTheLoai] = @maTheLoai" +
                "  ,[MaQuocGia] = @maQuocGia" +
                "  ,[ThoiLuong] = @thoiLuong" +
                "  ,[KhoiChieu] = @khoiChieu" +
                "  ,[KetThuc] = @ketThuc" +
                "  ,[DaoDien] = @daoDien" +
                "  ,[NoiDung] = @noiDung" +
                "  ,[Trailer] = @trailer" +
                "  ,[MaDinhDang] = @maDinhDang" +
                "  ,[MaNhanVien] = @maNhanVien" +
                "  ,[MaHangPhim] = @maHangPhim " +
             "WHERE MaPhim=@maPhim");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tenPhim", tenPhim);
            cmd.Parameters.AddWithValue("@anhDaiDien", anhDaiDien);
            cmd.Parameters.AddWithValue("@maTheLoai", maTheLoai);
            cmd.Parameters.AddWithValue("@maQuocGia", maQuocGia);
            cmd.Parameters.AddWithValue("@thoiLuong", thoiLuong);
            cmd.Parameters.AddWithValue("@khoiChieu", khoiChieu);
            cmd.Parameters.AddWithValue("@ketThuc", ketThuc);
            cmd.Parameters.AddWithValue("@daoDien", daoDien);
            cmd.Parameters.AddWithValue("@noiDung", noiDung);
            cmd.Parameters.AddWithValue("@trailer", trailer);
            cmd.Parameters.AddWithValue("@maDinhDang", maDinhDang);
            cmd.Parameters.AddWithValue("@maNhanVien", maNhanVien);
            cmd.Parameters.AddWithValue("@maHangPhim", maHangPhim);
            cmd.Parameters.AddWithValue("@maPhim", maPhim);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả phim
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả phim
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Phim()
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaPhim],[TenPhim],[AnhDaiDien],tb_TheLoai.TenTheLoai,tb_QuocGia.TenQuocGia,[ThoiLuong],[KhoiChieu],[KetThuc],[DaoDien],[NoiDung],[Trailer],tb_DinhDang.TenDinhDang,tb_NhanVien.MaNhanVien,tb_HangPhim.TenHangPhim " +
              "FROM[dbo].[tb_Phim] " +
              "INNER JOIN tb_TheLoai ON tb_TheLoai.MaTheLoai = tb_Phim.MaTheLoai " +
              "INNER JOIN tb_QuocGia ON tb_QuocGia.MaQuocGia = tb_Phim.MaQuocGia " +
              "INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_Phim.MaDinhDang " +
              "INNER JOIN tb_NhanVien ON tb_NhanVien.MaNhanVien = tb_Phim.MaNhanVien " +
              "INNER JOIN tb_HangPhim ON tb_HangPhim.MaHangPhim = tb_Phim.MaHangPhim ");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra danh sách tất cả phim đang chiếu
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả phim đang chiếu
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_PhimDangChieu()
        {
            SqlCommand cmd = new SqlCommand("SELECT TOP(12) [MaPhim],[TenPhim],[AnhDaiDien],tb_TheLoai.TenTheLoai,tb_QuocGia.TenQuocGia,[ThoiLuong],[KhoiChieu],[KetThuc],[DaoDien],[NoiDung],[Trailer],tb_DinhDang.TenDinhDang,tb_NhanVien.MaNhanVien,tb_HangPhim.TenHangPhim " +
              "FROM[dbo].[tb_Phim] " +
              "INNER JOIN tb_TheLoai ON tb_TheLoai.MaTheLoai = tb_Phim.MaTheLoai " +
              "INNER JOIN tb_QuocGia ON tb_QuocGia.MaQuocGia = tb_Phim.MaQuocGia " +
              "INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_Phim.MaDinhDang " +
              "INNER JOIN tb_NhanVien ON tb_NhanVien.MaNhanVien = tb_Phim.MaNhanVien " +
              "INNER JOIN tb_HangPhim ON tb_HangPhim.MaHangPhim = tb_Phim.MaHangPhim " +
              "WHERE KhoiChieu < GETDATE()");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion
        #region Phương thức lấy ra phim theo mã
        /// <summary>
        /// Phương thức lấy ra phim theo mã
        /// </summary>
        /// <param name="maPhim"></param>
        /// <returns></returns>
        public static DataTable Thongtin_PhimTheoMa(int maPhim)
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaPhim],[TenPhim],[AnhDaiDien],tb_TheLoai.TenTheLoai,tb_TheLoai.MaTheLoai,tb_QuocGia.TenQuocGia,tb_QuocGia.MaQuocGia,[ThoiLuong],[KhoiChieu],[KetThuc],[DaoDien],[NoiDung],[Trailer],tb_DinhDang.TenDinhDang,tb_DinhDang.MaDinhDang,tb_NhanVien.MaNhanVien,tb_HangPhim.TenHangPhim,tb_HangPhim.MaHangPhim " +
              "FROM[dbo].[tb_Phim] " +
              "INNER JOIN tb_TheLoai ON tb_TheLoai.MaTheLoai = tb_Phim.MaTheLoai " +
              "INNER JOIN tb_QuocGia ON tb_QuocGia.MaQuocGia = tb_Phim.MaQuocGia " +
              "INNER JOIN tb_DinhDang ON tb_DinhDang.MaDinhDang = tb_Phim.MaDinhDang " +
              "INNER JOIN tb_NhanVien ON tb_NhanVien.MaNhanVien = tb_Phim.MaNhanVien " +
              "INNER JOIN tb_HangPhim ON tb_HangPhim.MaHangPhim = tb_Phim.MaHangPhim " +
              "WHERE MaPhim=@maPhim");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhim", maPhim);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}